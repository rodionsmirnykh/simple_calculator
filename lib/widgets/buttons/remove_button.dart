import 'package:flutter/material.dart';

class RemoveButton extends StatelessWidget {
  final String _buttonLabel;
  final Function _buttonFunc;
  RemoveButton(this._buttonLabel, this._buttonFunc);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: TextButton(
                onPressed: () => _buttonFunc(), child: Text(_buttonLabel))),
      ],
    );
  }
}
