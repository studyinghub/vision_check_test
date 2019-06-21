import 'package:flutter/material.dart';
import 'step_builder.dart';
import 'components/BottomHomeBar.dart';
import 'package:flutter/cupertino.dart';

class TheActualSteps extends StatefulWidget {
  @override
  _TheActualStepsState createState() => _TheActualStepsState();
}

class _TheActualStepsState extends State<TheActualSteps> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[],
      ),
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
      floatingActionButton: FloatingActionButton.extended(
        elevation: 8.0,
        shape: RoundedRectangleBorder(),
        backgroundColor: Color(0xFF15C96C),
        icon: Icon(
          Icons.check,
        ),
        onPressed: () {
          //this is where the pop up should come out and stuff
          Navigator.pop(context);

          setState(() {});
        },
        label: Text(
          'Done',
        ),
      ),
      bottomNavigationBar: BottomHomeBar(),
    );
  }
}
