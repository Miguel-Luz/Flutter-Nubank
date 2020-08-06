import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'frontstate_page.dart';
import 'backstate_page.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  bool show = false;
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      backgroundColor: Color.fromARGB(170, 255, 0, 255),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: SingleChildScrollView(
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(
                      bottom: 20.0,
                    ),
                    child: Text(
                      "Peça já o seu Nubank ...",
                      style: TextStyle(
                        fontFamily: 'Rubik',
                        color: Colors.white,
                        fontSize: 55,
                      ),
                    ),
                  ),
                  Flexible(child: FlipCard(front: FrontState(),back: BackState(),)),
             ]),
          ),
        ),
      ),
    );
  }
}



