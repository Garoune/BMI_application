import 'package:flutter/material.dart';
import 'package:flutter_bmi_app/screens/home_screens.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'dana'),
      debugShowCheckedModeBanner: false,
      home: HomeScreen());
  }
}
