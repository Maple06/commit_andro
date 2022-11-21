import 'package:flutter/material.dart';
import 'package:kommit/ui/ui_helper.dart';
import 'dashboard.dart';
import 'register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bangke',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Gajelas'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  // void _navigateToKamuAsu(BuildContext context){
  //   Navigator.of(context).push(MaterialPageRoute(builder: (context) => const KamuAsu()));
  // }

  void _navigateToDashboard(BuildContext context){
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Dashboard()));
  }

  void _navigateToRegister(BuildContext context){
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Register()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
          child: Center(
            child: Column(
              children: <Widget>[
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 100),
                    child: Text(
                      'SMKN 2 Bandung',
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Container(
                    child: Image.asset('assets/logo.png', height: 200, width: 200),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Container(
                    width: MediaQuery.of(context).size.width*0.5,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Username',
                        labelStyle: TextStyle(fontSize: 14),
                        hintText: 'Enter your username',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)
                        )
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)
                        ),
                        labelText: 'Password',
                        labelStyle: TextStyle(fontSize: 14),
                        hintText: 'Enter your password',
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width*0.3,
                  height: 40,
                  child: ElevatedButton(onPressed: (){
                    _navigateToDashboard(context);
                  },
                    child: Text(
                      "Login",
                      style: TextStyle(fontSize: 18),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)
                      ),
                    ),
                  ),
                ),
                verticalSpaceSmall,
                ElevatedButton(
                    onPressed: (){
                      _navigateToRegister(context);
                    },
                    child: Text("Register"),
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}
