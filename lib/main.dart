import 'package:dice_roller/screens/home.dart';
import 'package:dice_roller/screens/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Dice Roller",
      theme: ThemeData(
        accentColor: Colors.deepPurpleAccent,
        primaryColor: Colors.deepPurple.shade400
      ),
      home: SplashScreen(),
    );
  }
}
