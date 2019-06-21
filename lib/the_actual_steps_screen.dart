import 'package:flutter/material.dart';
import 'step_builder.dart';
import 'components/BottomHomeBar.dart';

class TheActualSteps extends StatefulWidget {
  @override
  _TheActualStepsState createState() => _TheActualStepsState();
}

class _TheActualStepsState extends State<TheActualSteps> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: new Icon(
              Icons.close,
              color: Colors.black,
              size: 30,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
        title: Text(
          "List",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: Color(0xFF15C96C),
          ),
        ),
        backgroundColor: Colors.white,
      ),
      bottomNavigationBar: BottomHomeBar(),
    );
  }
}
