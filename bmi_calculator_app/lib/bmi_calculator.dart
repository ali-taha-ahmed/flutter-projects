import 'dart:math';

class BMICalculator {
  final int height;
  final int weight;
  double _bmi;
  BMICalculator(this.height, this.weight);
  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return "Overweight";
    } else if (_bmi > 18.5) {
      return "normal";
    } else {
      return "underweight";
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return "You are a bit fat. Get up and exercise";
    } else if (_bmi > 18.5) {
      return "You are in Great shape Keep it up";
    } else {
      return "You are skinny. Eat More ";
    }
  }
}
