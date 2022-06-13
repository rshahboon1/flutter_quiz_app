import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function cb;
  final String ansTxt;
  final int sc;
  const Answer({
    Key? key,
    required this.cb,
    required this.ansTxt,
    required this.sc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 30, right: 30, bottom: 10),
      // decoration: BoxDecoration(borderRadius: BorderRadius.all(b)),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.white,
          minimumSize: const Size.fromHeight(50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          shadowColor: const Color.fromRGBO(239, 213, 255, 1),
        ),
        onPressed: () {
          cb(sc: sc);
          // Navigator.pushNamed(context, '/result');
        },
        child: Text(
          ansTxt,
          style: const TextStyle(
            color: Color.fromRGBO(81, 90, 218, 1),
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
