import 'dart:math';
import 'package:flutter/material.dart';

//bens here. local checkin
void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade50,
        title: Text(
          'Ask Meh Summin:',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      backgroundColor: Colors.grey.shade400,
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          setState(() {
            ballNumber = Random().nextInt(5) + 1;
            print('clicked breh: $ballNumber');
          });
        },
        child: Image.asset('images/ball$ballNumber.png'),
      ),
    );
//This is what i came up with.... but guess didnt need that much
//      child: Row(
//        children: <Widget>[
//          Expanded(
//            child: Image.asset('images/ball1.png'),
//          ),
//        ],
//      ),
    //);
  }
}
