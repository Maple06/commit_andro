import 'package:flutter/material.dart';
import 'ui/ui_helper.dart';

class KamuAsu extends StatefulWidget {
  const KamuAsu({Key? key}) : super(key: key);

  @override
  State<KamuAsu> createState() => _KamuAsuState();
}

class _KamuAsuState extends State<KamuAsu> {
  int _listCount = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contacts List"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              verticalSpaceSmall,
              ElevatedButton(onPressed: (){setState(() {
                _listCount++;
              });},
                child: Text(
                  'Add List',
                ),
              ),
              verticalSpaceSmall,
              ListView.builder(
                physics: ScrollPhysics(parent: null),
                shrinkWrap: true,
                itemCount: _listCount,
                itemBuilder: (BuildContext context, int index){
                  return Container(
                    decoration: BoxDecoration(
                      color: index.isEven ? Colors.red : Colors.lightBlueAccent,
                    ),
                    child: ListTile(
                      title: Text('Contact $index'),
                      leading: Icon(Icons.person),
                      trailing: Icon(Icons.add),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
