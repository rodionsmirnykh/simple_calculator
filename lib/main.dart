import 'package:flutter/material.dart';
import 'package:simple_calculator/widgets/answer_label.dart';
import 'package:simple_calculator/widgets/buttons/numbers.dart';
import 'package:simple_calculator/widgets/buttons/remove_button.dart';
import 'package:simple_calculator/widgets/buttons/signs.dart';

void main() {
  runApp(CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Calculator',
      home: HomePage('Simple calculator'),
    );
  }
}

class HomePage extends StatefulWidget {
  final title;

  HomePage(this.title);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String expression = '0';

  void addToExpression(String str) {
    setState(() {
      if (expression == '0') {
        expression = str;
      } else {
        expression += str;
      }
    });
  }

  void removeFromExpression() {
    setState(() {
      if (expression.length > 1) {
        expression = expression.substring(0, expression.length - 1);
      } else {
        expression = '0';
      }
    });
  }

  void removeAll() {
    setState(() {
      expression = '0';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Column(
        children: [
          AnswerLabel(expression),
          Numbers(addToExpression),
          Signs(addToExpression),
          RemoveButton('Remove', removeFromExpression),
          RemoveButton('Clear', removeAll),
        ],
      ),
    );
  }
}
