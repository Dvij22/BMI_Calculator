import 'dart:math';

class Calculator {
  Calculator(this.weight, this.height);
  final int weight;
  final int height;
  late double BMI;

  String calculateBMI() {
    BMI = weight / pow(height / 100, 2);
    return BMI.toStringAsFixed(1);
  }

  String getresult() {
    if (BMI > 25) {
      return 'OVERWEIGHT';
    } else if (BMI > 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDERWRIGHT';
    }
  }

  String getResultSentence() {
    if (BMI > 25) {
      return 'You need some more exercise';
    } else if (BMI > 18.5) {
      return 'You are fit';
    } else {
      return 'You need to increase your diet';
    }
  }
}
