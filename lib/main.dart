import 'package:device_preview/device_preview.dart';
import 'package:ecode/screens/home/home.dart';
import 'package:ecode/screens/login/login.dart';
import 'package:ecode/screens/onboard/onboard.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

//void main() => runApp(
//  DevicePreview(
//    enabled: !kReleaseMode,
//    builder: (context) => MyApp(),
//  ),
//);

void main() => runApp(MyApp());



class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        "/home" : (context) => HomePage(),
        "/login" : (context) => LoginPage(),
      },
      home: OnboardingScreen(),
    );
  }
}