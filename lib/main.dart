// @dart=2.9
import 'package:flutter/material.dart';
import 'package:sandbox/screens/login_screen.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
        seconds: 13,
        navigateAfterSeconds: LoginScreen(),
        title: const Text(
          'Welcome to Sandbox',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
              color: Colors.cyanAccent),
        ),
        imageBackground: const AssetImage('images/cosmo.jpg'),
        backgroundColor: Colors.white,
        styleTextUnderTheLoader: TextStyle(),
        loaderColor: Colors.cyanAccent);
  }
}

class AfterSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          title: new Text("Welcome In SplashScreen Package"),
          automaticallyImplyLeading: false),
      body: new Center(
        child: new Text(
          "Done!",
          style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
        ),
      ),
    );
  }
}
