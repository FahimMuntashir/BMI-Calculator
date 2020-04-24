
import 'dart:math';

import 'main.dart';
class CalculatorBrain{
  CalculatorBrain({this.weight,this.height});
  final int height ;
  final int weight;
  double _bmi;

  String calculateBMI(){
    _bmi = weight/pow(height/100, 2);
        return _bmi.toStringAsFixed(1);
  }

  String getResult(){
    if (_bmi>=25) {
      return 'Overweight';

    }  else if (_bmi>=18.5) {
      return 'Normal';

    }  else{
      return 'Underwight';
    }
  }

  String getInterpretation(){
    if (_bmi>=25) {
      return 'Try to exercise more';

    }  else if (_bmi>=18.5) {
      return 'God job !';

    }  else{
      return 'You should eat more';
    }
  }
}