import 'package:flutter/material.dart';

class TopPar extends StatelessWidget {
  final int sc;
  const TopPar({Key? key, required this.sc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white10),
        color: Colors.transparent,
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
            bottomLeft: Radius.circular(50),
            bottomRight: Radius.circular(50)),
        boxShadow: const [
          BoxShadow(
            color: Colors.white12,
            spreadRadius: 3,
            blurRadius: 7,
            offset: Offset(0, 0), // changes position of shadow
          ),
        ],
      ),
      margin: const EdgeInsets.fromLTRB(15, 25, 15, 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 100,
            height: 41,
            child: Stack(
              children: [
                Positioned(
                  top: 7,
                  right: 45,
                  child: SizedBox(
                    width: 50,
                    height: 27,
                    child: Container(
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(47, 13, 2, 56),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                          )),
                      child: Center(
                        child: Text(
                          sc.toString(),
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
                const Positioned(
                    right: 10,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://lh3.googleusercontent.com/a-/AOh14GhttQVs0y4XAlRroEuCRfElvzpwGKD55Tq0NE0Ipw=s83-c-mo'),
                    )),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 6, 10, 6),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Color.fromARGB(47, 13, 2, 56),
            ),
            child: const Text(
              "اختبر معلوماتك ",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
