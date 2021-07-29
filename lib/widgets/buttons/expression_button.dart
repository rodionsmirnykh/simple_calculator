import 'package:flutter/material.dart';

class ExpressionButton extends StatelessWidget {
  final String _buttonLabel;
  final Function _buttonFunc;

  ExpressionButton(this._buttonLabel, this._buttonFunc);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: TextButton(
            onPressed: () => _buttonFunc(_buttonLabel),
            child: Text(_buttonLabel)));
  }
}
