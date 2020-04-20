import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InputPage(),
      theme: ThemeData().copyWith(
        primaryColor: Color(0xFF101639),
        scaffoldBackgroundColor: Color(0xFF141A3B),
      ),
    );
  }
}

