import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback pressEventHandler;
  final String answer;

  Answer(this.pressEventHandler, this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(answer),
        color: Colors.blue,
        textColor: Colors.white,
        onPressed: pressEventHandler,
      ),
    );
  }
}
