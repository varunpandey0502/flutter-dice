import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Dice',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Dice'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int diceNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.red,
      ),
      body: Center(
          child: Column(
        children: <Widget>[
          SizedBox(
            height: 100,
          ),
          Image.asset(
            'images/dice-$diceNumber.png',
            height: 150,
          ),
          SizedBox(height: 25),
          RaisedButton(
              onPressed: () {
                setState(() {
                  diceNumber = Random().nextInt(6) + 1;
                });
              },
              child: Text('Roll Dice'))
        ],
      )),
    );
  }
}
