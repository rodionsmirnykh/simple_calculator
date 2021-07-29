import 'package:flutter/material.dart';
import 'package:simple_calculator/widgets/buttons/calculator_button.dart';

class Signs extends StatelessWidget {
  final signs = ['+', '-', '/', '*'];
  final Function f;

  Signs(this.f);

  @override
  Widget build(BuildContext context) {
    return Row(
        children: signs.map((index) {
      return CalculatorButton(index, f);
    }).toList());
  }
}
