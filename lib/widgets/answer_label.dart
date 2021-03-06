import 'package:flutter/material.dart';
import 'package:function_tree/function_tree.dart';

class AnswerLabel extends StatelessWidget {
  final String _input;
  static const _signs = ['+', '-', '/', '*'];

  bool isLastSign() {
    if (_signs.contains(_input.substring(_input.length - 1)))
      return true;
    else
      return false;
  }

  AnswerLabel(this._input);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              _input,
              textAlign: TextAlign.left,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              isLastSign() == false
                  ? 'Answer: ' + _input.interpret().toString()
                  : 'Answer:',
              textAlign: TextAlign.left,
            )
          ],
        ));
  }
}
