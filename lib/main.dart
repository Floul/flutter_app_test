import 'package:flutter/material.dart';
import 'dart:math' as math;
/* */

void main() {
  runApp(MaterialApp(
    title: "My first Flutter App",
    home: ChangeBackground(),
  ));
}

class ChangeBackground extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ChangeBackgroundState();
  }
}

class _ChangeBackgroundState extends State<ChangeBackground> {
  Color color = Colors.yellow;
  String yourMessage = '  ';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My first Flutter app")),
      body: new InkWell(
        onTap: () {
          setState(() {
            color = Color((math.Random().nextDouble() * 0xFFFFFF).toInt() << 0)
                .withOpacity(1.0);
          });
        },
        child: Container(
            color: color,
            child: Container(
              color: Colors.white,
              margin: EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: TextField(
                      decoration: new InputDecoration.collapsed(
                          hintText: 'Enter your message'
                      ),
                      textAlign: TextAlign.center,
                      onSubmitted: (String userInput) {
                        setState(() {
                          yourMessage = userInput;
                        });
                      },
                    ),
                  ),

                ],
              ),
            )),
      ),
    );
  }
}
