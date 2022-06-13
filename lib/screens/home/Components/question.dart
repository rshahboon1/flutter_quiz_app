import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String Q;
  const Question({Key? key, required this.Q}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            Q,
            style: const TextStyle(
              fontSize: 36,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
