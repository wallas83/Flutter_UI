import 'package:flutter/material.dart';
import 'package:stadia_app/pages/landing_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Google stadia App concept',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          canvasColor: Colors.white,
          primaryColor: Colors.blue,
          fontFamily: 'Oxygen'),
      home: LandingPage(),
    );
  }
}
