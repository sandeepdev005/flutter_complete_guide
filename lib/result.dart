import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback pressHandler;

  Result({required this.resultScore, required this.pressHandler});

  String get resultPhrase {
    String resultText;

    if (resultScore < 8) {
      resultText = "You are awesome and innocent";
    } else if (resultScore < 12) {
      resultText = "You are strange";
    } else {
      resultText = " You are bad person";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          FlatButton(
            child: Text("Reset Quiz"),
            textColor: Colors.blue,
            onPressed: pressHandler,
          )
        ],
      ),
    );
  }
}
