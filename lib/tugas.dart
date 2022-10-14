import 'package:flutter/material.dart';
import 'ui/ui_helper.dart';
import 'dart:async';
import 'dart:math';

class Tugas extends StatefulWidget {
  const Tugas({Key? key}) : super(key: key);

  @override
  State<Tugas> createState() => _TugasState();
}

class _TugasState extends State<Tugas> {
  bool saklarIsOn = false;
  bool stekerIsOn = false;

  int volt = 5;
  int current = 10;
  int power = 20;
  int energy = 45;
  int freq = 90;

  void changePowerValue(){
    setState(() {
      Random random = new Random();
      volt = 5 + random.nextInt(35);
      current = 5 + random.nextInt(40);
      power = 10 + random.nextInt(35);
      energy = 5 + random.nextInt(90);
      freq = 40 + 5 + random.nextInt(320);
    });
  }



  Timer? timer;

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(Duration(seconds: 2), (Timer t) => changePowerValue());
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tugas'),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.blueAccent,
        child: Center(
          child: Column(
            children: <Widget>[
              verticalSpaceMedium,
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 130,
                width: 370,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    verticalSpaceTiny,
                    Text(
                      'Power',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25, right: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                "Voltage"
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                volt.toString() + " V",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25, right: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                  "Current"
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                current.toString() + " A",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25, right: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                  "Power"
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                power.toString() + " W",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25, right: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                  "Energy"
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                energy.toString() + " kWh",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25, right: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                  "Frequency"
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                freq.toString() + " Hz",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    verticalSpaceTiny,
                  ],
                ),
              ),
              verticalSpaceTiny,
              Container(
                width: 370,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        verticalSpaceSmall,
                        Container(
                          height: 175,
                          width: 170,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Saklar",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 20),
                                width: 100,
                                child: ListTile(
                                  title: Switch(
                                    value: saklarIsOn,
                                    onChanged: (value) {
                                      setState(() {
                                        saklarIsOn = value;
                                      });
                                    },
                                    activeTrackColor: Colors.lightBlueAccent,
                                    activeColor: Colors.blue,
                                  ),
                                  trailing: Icon(Icons.lightbulb, color: Colors.black),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        verticalSpaceSmall,
                        Container(
                          height: 175,
                          width: 170,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Steker",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 20),
                                width: 100,
                                child: ListTile(
                                  title: Switch(
                                    value: stekerIsOn,
                                    onChanged: (value) {
                                      setState(() {
                                        stekerIsOn = value;
                                      });
                                    },
                                    activeTrackColor: Colors.lightBlueAccent,
                                    activeColor: Colors.blue,
                                  ),
                                  trailing: Icon(Icons.bolt_sharp, color: Colors.black),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              verticalSpaceSmall,
              SizedBox(
                width: 370,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                  ),
                  onPressed: (){
                    setState(() {
                      saklarIsOn = false;
                      stekerIsOn = false;

                      volt = 0;
                      current = 0;
                      power = 0;
                      energy = 0;
                      freq = 0;
                    });
                  },
                  child: Text(
                    "RESET",
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
