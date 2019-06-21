import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ListOfStepCards extends StatelessWidget {
  final String stepName;
  final int stepNumber;
  ListOfStepCards({@required this.stepName, @required this.stepNumber});

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
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          color: Color(0xFF15C96C),
          height: 50.0,
          width: 260.0,
          child: Text(
            stepNumber.toString() + "." + " " + stepName,
          ),
        ),
        Container(
          child: MaterialButton(
            elevation: 15.0,
            padding: EdgeInsets.all(15.0),
            child: Text(
              "Select Target Date",
              style: TextStyle(color: Color(0xFF15C96C)),
            ),
            color: Color(0xFFFFFFFF),
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  builder: (BuildContext builder) {
                    return Container(
                        height:
                            MediaQuery.of(context).copyWith().size.height / 3,
                        child: datetime());
                  });
            },
          ),
        ),
      ],
    );
  }
}
