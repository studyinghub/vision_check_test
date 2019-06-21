import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vision_check_test/step_builder.dart';
import 'package:vision_check_test/components/BottomHomeBar.dart';
import 'list_of_step_cards.dart';

void main() {
  runApp(DatePicker());
}

class DatePicker extends StatefulWidget {
  @override
  _DatePickerState createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ExamplePage());
  }
}

class ExamplePage extends StatefulWidget {
  @override
  _ExamplePageState createState() => _ExamplePageState();
}

class _ExamplePageState extends State<ExamplePage> {
  DateTime _setDate = DateTime.now();
  Duration initialtimer = new Duration();
  int selectitem = 1;
  ListOfStepCards stepCards = new ListOfStepCards();

  Widget datetime() {
    return CupertinoDatePicker(
      initialDateTime: DateTime.now(),
      onDateTimeChanged: (DateTime newdate) {
        print(newdate);
      },
      use24hFormat: true,
      maximumDate: new DateTime(2030, 12, 30),
      minimumYear: 2019,
      maximumYear: 2030,
      minuteInterval: 1,
      mode: CupertinoDatePickerMode.dateAndTime,
    );
  }

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
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Steps(),
                ),
              );
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
      body: Stack(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ListOfStepCards(
                stepName: 'Dante',
                stepNumber: 1,
              ),
              ListOfStepCards(
                stepNumber: 2,
                stepName: 'Get good niqqa',
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        elevation: 8.0,
        shape: RoundedRectangleBorder(),
        backgroundColor: Color(0xFF15C96C),
        icon: Icon(
          Icons.check,
        ),
        onPressed: () {
          backgroundText = "";
          //this is where the pop up should come out and stuff
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Steps(),
            ),
          );

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
