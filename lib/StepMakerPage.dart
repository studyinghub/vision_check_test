import 'package:flutter/material.dart';
import 'dart:collection';
import 'components/BottomHomeBar.dart';
import 'components/category_icons.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

class StepMaker extends StatefulWidget {
  @override
  _StepMakerState createState() => _StepMakerState();
}

class _StepMakerState extends State<StepMaker> {
  DateTime selected;
  String dateVariable;

  //Calendar pop up and format to mm, dd year
  _showDateTimePicker() async {
    var selected = await showDatePicker(
        context: context,
        initialDate: new DateTime.now(),
        firstDate: new DateTime(1960),
        lastDate: new DateTime(2050));

    setState(() {
      if (selected != null) {
        dateVariable = new DateFormat.yMMMMd("en_US")
            .format(DateTime.parse(selected.toString()));
      }
    });
  }

  @override
  void initState() {
    super.initState();
    initializeDateFormatting();
  }

  @override
  Widget build(BuildContext context) {
    var dateStringParsing = new Column(
      children: <Widget>[
        new SizedBox(
          height: 30.0,
        ),
        selected != null
            ? new Text(
                dateVariable = new DateFormat('yyyy-MM-dd h:m:s')
                    .format(DateTime.parse("2018-09-15 20:18:04Z")),
                style: new TextStyle(
                  color: Colors.blue,
                  fontSize: 20.0,
                ),
              )
            : new SizedBox(
                width: 0.0,
                height: 0.0,
              ),
      ],
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Icon(
                usersIconData,
                color: Colors.black,
                size: 30,
              ),
              Text(
                "Your steps",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Color(0xFF15C96C),
                ),
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
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            //Add date row
            Row(
              children: <Widget>[
                Text("Please select target date: "),
                FlatButton(
                  onPressed: () => _showDateTimePicker(),
                  child: Card(
                    child: Text("Select Date"),
                  ),
                ),
                dateStringParsing,
                Text(dateVariable.toString()),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: new BottomHomeBar(),
    );
  }
}
