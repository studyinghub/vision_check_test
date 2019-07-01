import 'package:flutter/material.dart';
import 'dart:collection';
import 'components/BottomHomeBar.dart';
import 'components/category_icons.dart';
import 'StepMakerPage.dart';

String backgroundText = "No Dreams";

class Steps extends StatefulWidget {
  @override
  _StepsState createState() => _StepsState();
}

class _StepsState extends State<Steps> {
  List steps = List(10);
  Card tempForAddingButtonInQueue;
  bool pressedAddForFirstTime = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Icon(
                usersIconData,
                color: Colors.black,
                size: 30,
              ),
              Text(
                "Your steps",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Color(0xFF15C96C),
                ),
              ),
            ],
          ),
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
//
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              backgroundText,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        elevation: 8.0,
        shape: RoundedRectangleBorder(),
        backgroundColor: Color(0xFF15C96C),
        icon: Icon(
          Icons.add,
        ),
        onPressed: () {
          //this is where the pop up should come out and stuff
          setState(() {
            backgroundText = "";
          });

          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => StepMaker()),
          );
        },
        label: Text(
          'Add step',
        ),
      ),
      bottomNavigationBar: new BottomHomeBar(),
    );
  }
}
