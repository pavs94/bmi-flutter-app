import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;
  double _bmi;
  CalculatorBrain({this.weight, this.height});

  String calcuateBMI() {
    _bmi = (weight / pow(height / 100, 2));
    return _bmi.toStringAsFixed(1);
  }

  String checkResults() {
    if (_bmi > 25)
      return 'OVERWEIGHT';
    else if (_bmi > 18.5)
      return 'NORMAL';
    else
      return 'UNDERWEIGHT';
  }

  String getInterpretation() {
    if (_bmi > 25)
      return 'You have a higher than normal body weight. Try to exercise more.. ';
    else if (_bmi > 18.5)
      return 'You have a normal body weight. Good Job!';
    else
      return 'You have a lower than normal body weight. Try to gain more weight.. ';
  }
}