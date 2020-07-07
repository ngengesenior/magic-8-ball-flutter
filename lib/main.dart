import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue.shade300,
          body: MagicPage(),
          appBar: AppBar(
            title: Text("Ask Me Anything"),
          ),
        ),
      ),
    );

class MagicPage extends StatefulWidget {
  @override
  _MagicPageState createState() => _MagicPageState();
}

class _MagicPageState extends State<MagicPage> {
  int _ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        child: Image.asset("images/ball$_ballNumber.png"),
        onPressed: () {
          setState(() {
            _ballNumber = Random().nextInt(5) + 1;
          });
        },
      ),
    );
  }
}
