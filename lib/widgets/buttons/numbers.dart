import 'package:flutter/material.dart';
import 'package:simple_calculator/widgets/buttons/expression_button.dart';

class Numbers extends StatelessWidget {
  final Function _f;

  Numbers(this._f);

  List<ExpressionButton> get numberButtons {
    return List.generate(10, (index) => ExpressionButton(index.toString(), _f));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [numberButtons[1], numberButtons[2], numberButtons[3]],
        ),
        Row(
          children: [numberButtons[4], numberButtons[5], numberButtons[6]],
        ),
        Row(
          children: [numberButtons[7], numberButtons[8], numberButtons[9]],
        ),
        Row(
          children: [numberButtons[0]],
        )
      ],
    );
  }
}
