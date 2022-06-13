import 'package:flutter/material.dart';
import '../../modules/results_data_type.dart';

class ResultBtn extends StatelessWidget {
  final num sc;
  final num total;
  const ResultBtn({Key? key, required this.sc, required this.total})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: const Color.fromRGBO(81, 90, 218, 1),
          // minimumSize: const Size.fromWidth(50),
          padding: const EdgeInsets.only(left: 30, right: 30),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        onPressed: () {
          // _counter_add();
          Navigator.pushNamed(
            context,
            '/result',
            arguments: ResultDataType(sc: sc, total: total),
          );
        },
        child: const Text("عرض النتيجة"));
  }
}
