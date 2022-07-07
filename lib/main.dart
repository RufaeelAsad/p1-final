import 'package:flutter/material.dart';
import 'package:p1final/screens/dashboardScreens/homePage.dart';
import 'package:p1final/screens/introScreens/splashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,

      title: 'faison',

      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),

      home: SplashScreen(),
    );
  }
}
