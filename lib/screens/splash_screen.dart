import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

import 'login_screen.dart';

class StartWidget extends StatefulWidget {
  const StartWidget({Key? key}) : super(key: key);

  @override
  State<StartWidget> createState() => _StartWidgetState();
}

class _StartWidgetState extends State<StartWidget> {
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
