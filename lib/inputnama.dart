import 'package:flutter/material.dart';
import 'package:kommit/data/shared_prefs.dart';
import 'package:kommit/ui/ui_helper.dart';

class InputNama extends StatefulWidget {
  const InputNama({Key? key}) : super(key: key);

  @override
  State<InputNama> createState() => _InputNamaState();
}

class _InputNamaState extends State<InputNama> {

  String? _name;

  TextEditingController namaController = TextEditingController();

  loadValues() async {
    _name = await SharedPrefs.getString('namaValue');
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    loadValues();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Input Nama"),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        padding: EdgeInsets.only(top: 30),
        child: Row(
          children: [
            Text("String value: $_name"),
            Expanded(
              child: TextField(
                controller: namaController,
                decoration: InputDecoration(
                  labelText: "Enter Value",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ),
            horizontalSpaceMedium,
            ElevatedButton(
                onPressed: (){
                  setState(() {
                    _name = namaController.text;
                    SharedPrefs.setString('namaValue', _name!);
                    loadValues();
                  });
                },
                child: Text("Save"),
            ),
            ElevatedButton(
              onPressed: (){
                setState(() {
                  SharedPrefs.remove('namaValue');
                  loadValues();
                });
              },
              child: Text("Delete"),
            ),
          ],
        ),
      ),
    );
  }
}
