// @dart=2.9
import 'package:flutter/material.dart';
import 'package:sandbox/screens/login_screen.dart';
import 'package:sandbox/screens/splash_screen.dart';
import 'package:sandbox/screens/welcome_screen.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(MaterialApp(initialRoute: '/', routes: {
    '/': (context) => StartWidget(),
    '/welcome': (context) => WelcomeWidget(),
  }));
}
