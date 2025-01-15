import 'dart:math';

import 'package:flutter/material.dart';

class CalculateResult {
  final double height;
  final double weight;

  CalculateResult(this.height, this.weight);

  double calculateBMI() {
    return weight / pow(height / 100, 2);
  }

  String getDescription() {
    double bmi = calculateBMI();
    if (bmi < 18.5) {
      return "You are underweight. You need to eat more.";
    } else if (bmi < 24.9) {
      return "You are normal. Keep it up!";
    } else if (bmi < 29.9) {
      return "You are overweight. You need to exercise more.";
    } else {
      return "You are obese. You need to exercise more and eat less.";
    }
  }
}
