import 'package:flutter/material.dart';
import './answer.dart';

class AnswersGroup extends StatelessWidget {
  final List<String> answers;
  final int correct;
  final Function cb;
  final int scval;
  const AnswersGroup(
      {Key? key,
      required this.answers,
      required this.correct,
      required this.cb,
      required this.scval})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    int i = 0;
    final List<Widget> ch = answers.map((e) {
      int sc = 0;
      if (i == correct) {
        sc += scval;
      }
      i++;
      return Answer(ansTxt: e, cb: cb, sc: sc);
    }).toList();

    return Column(
      children: ch,
    );
  }
}
