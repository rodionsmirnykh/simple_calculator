import 'package:flutter/material.dart';
import 'package:simple_calculator/widgets/buttons/expression_button.dart';

class Signs extends StatelessWidget {
  final Function _f;
  static const _signs = ['+', '-', '/', '*'];

  Signs(this._f);

  @override
  Widget build(BuildContext context) {
    return Row(
        children: _signs.map((index) {
      return ExpressionButton(index, _f);
    }).toList());
  }
}
