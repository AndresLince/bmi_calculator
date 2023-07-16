import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;
  double _bmi = 0;
  CalculatorBrain({ required this.height, required this.weight});

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }
}