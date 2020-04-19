import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMICalcuator());

class BMICalcuator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      title: 'hey',
      theme: ThemeData().copyWith(
        primaryColor: Color(0xFF282C4F),
        scaffoldBackgroundColor: Color(0xFF101339),
      ),
      home: InputPage(),
    );
  }
}

