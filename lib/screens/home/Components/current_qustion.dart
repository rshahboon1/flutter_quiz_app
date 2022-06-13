import 'package:flutter/material.dart';

class CurrentQuestion extends StatelessWidget {
  final String current;
  const CurrentQuestion({Key? key, required this.current}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 3, bottom: 15),
      child: Center(
        child: Text(
          current,
          style: const TextStyle(
              fontWeight: FontWeight.w400, color: Colors.white, fontSize: 24),
        ),
      ),
    );
  }
}
