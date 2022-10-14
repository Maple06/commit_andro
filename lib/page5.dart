import 'package:flutter/material.dart';
import 'package:kommit/ui/ui_helper.dart';

class Page5 extends StatefulWidget {
  const Page5({Key? key}) : super(key: key);

  @override
  State<Page5> createState() => _Page5State();
}

class _Page5State extends State<Page5> {
  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 5'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                color: Colors.cyan,
              ),
              transform: Matrix4.rotationX(0.6),
            ),
            Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                color: Colors.yellowAccent,
              ),
              transform: Matrix4.rotationY(0.6),
            ),
            Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                color: Colors.deepPurpleAccent,
              ),
              transform: Matrix4.rotationZ(0.6),
            ),
            Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              transform: Matrix4.skewX(0.6),
            ),
            Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                color: Colors.redAccent,
              ),
              transform: Matrix4.skewY(0.6),
            ),
          ],
        ),
      ),
    );
  }
}
