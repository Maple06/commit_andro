import 'package:flutter/material.dart';
import 'homebox.dart';
import 'contact_list.dart';
import 'tugas.dart';
import 'page5.dart';
import 'inputnama.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int selectedIndex = 0;

  void _onTap(int index){
    setState(() {
      selectedIndex = index;
    });
  }

  static const List<Widget> pageList = [
    ContactList(),
    InputNama(),
    HomeBox(),
    Tugas(),
    Page5(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.park),
            label: 'Yard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.kitchen),
            label: 'Kitchen',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.adb_outlined),
            label: 'Tugas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.ac_unit_sharp),
            label: 'Page 5',
          ),
        ],
        currentIndex: selectedIndex,
        onTap: _onTap,
      ),
      body: pageList.elementAt(selectedIndex),
    );
  }
}
