import 'package:flutter/material.dart';

class RemoveButton extends StatelessWidget {
  final String buttonLabel;
  final Function buttonFunc;
  RemoveButton(this.buttonLabel, this.buttonFunc);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: TextButton(
                onPressed: () => buttonFunc(), child: Text(buttonLabel))),
      ],
    );
  }
}
