import 'package:flutter/material.dart';
import 'ui/ui_helper.dart';

class HomeBox extends StatefulWidget {
  const HomeBox({Key? key}) : super(key: key);

  @override
  State<HomeBox> createState() => _HomeBoxState();
}

class _HomeBoxState extends State<HomeBox> {
  int _listCount = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Box'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              ElevatedButton(onPressed: (){setState(() {
                _listCount++;
              });}, child: Text(
                'Add List',
                ),
              ),
              GridView.builder(
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 150, mainAxisSpacing: 10, crossAxisSpacing: 10),
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
