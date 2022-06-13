import 'package:flutter/material.dart';
import './modules/data.dart';
import './Components/current_qustion.dart';
import './Components/question.dart';
import './Components/result_btn.dart';
import './Components/top_bar.dart';
import './Components/answers_group.dart';

class homePage extends StatefulWidget {
  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  int _current = 0;
  int _score = 0;
  final List questions = Data().mydata();
  int get _total {
    // print(questions.length.toString() + "=> leng");
    return questions.length;
  }

  int get _currntQ {
    return _current + 1;
  }

  bool get _showResult {
    return _currntQ - 1 == _total;
  }

  void _nextQ({required int sc}) {
    if (_current < _total) {
      setState(() {
        _current++;
        _score += sc;
      });
    }
  }

  // @override
  @override
  Widget build(BuildContext context) {
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
        // background: linear-gradient(90deg, #3F2B96 0%, #A8C0FF 100%);
        // backgroundColor: Colors.black,

        // appBar: AppBar(title: const Text("my title")),
        backgroundColor: Colors.transparent,
        body: Column(crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TopPar(sc: _score),
              (!_showResult)
                  ? CurrentQuestion(current: "$_currntQ  / $_total ")
                  : Container(),
              (!_showResult)
                  ? Question(Q: questions[_current]["question"].toString())
                  : Container(
                      margin: const EdgeInsets.only(top: 10, bottom: 20),
                      // decoration: BoxDecoration(),
                      child: const Text(
                        "لقد قمت بالاجابة علي جميع الاسئلة  ",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 28),
                      ),
                    ),
              (!_showResult)
                  ? AnswersGroup(
                      answers: questions[_current]["answers"] as List<String>,
                      correct: questions[_current]["correct"] as int,
                      scval: questions[_current]["sc_val"] as int,
                      cb: _nextQ,
                    )
                  // ignore: dead_code
                  : ResultBtn(
                      sc: _score.toDouble(),
                      total: _total.toDouble(),
                    ),
            ]),
      ),
    );
  }
}
