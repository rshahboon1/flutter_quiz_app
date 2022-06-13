import 'package:flutter/material.dart';

import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';
import '../modules/results_data_type.dart';

class Result extends StatelessWidget {
  Result({Key? key}) : super(key: key);

  String getPers(num x, num y) {
    num total = x + y;

    return (x * 100 / total).toStringAsFixed(2);
  }

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ResultDataType;
    // print(args.total);
    final num right = args.sc / 10;
    final num wrong = args.total - (right);

    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
            Color.fromRGBO(81, 90, 218, 1),
            Color.fromRGBO(239, 213, 255, 1),
          ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SfCircularChart(
              // Chart title text
              // tooltipBehavior: [entry],
              title: ChartTitle(text: 'نسبة اجابتك علي الاسالة'),
              legend: Legend(isVisible: true),

              series: [
                // Render pie chart
                PieSeries<ChartData, String>(
                    dataSource: [
                      // Bind data source
                      ChartData(
                        getPers(right, wrong) + '%  اجوبة صحيحة',
                        right as double,
                        Colors.teal,
                      ),
                      ChartData(
                        getPers(wrong, right) + '%  اجوبة خاطئة',
                        wrong as double,
                        Colors.redAccent,
                      ),
                    ],
                    pointColorMapper: (ChartData data, _) => data.color,
                    xValueMapper: (ChartData data, _) => data.x,
                    yValueMapper: (ChartData data, _) => data.y),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ChartData {
  ChartData(this.x, this.y, [this.color = Colors.red]);
  final String x;
  final double y;
  final Color color;
}
