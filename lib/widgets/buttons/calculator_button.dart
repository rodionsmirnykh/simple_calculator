import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final String buttonLabel;
  final Function buttonFunc;

  CalculatorButton(this.buttonLabel, this.buttonFunc);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: TextButton(
            onPressed: () => buttonFunc(buttonLabel),
            child: Text(buttonLabel)));
  }
}
