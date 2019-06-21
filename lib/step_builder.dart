import 'package:flutter/material.dart';
import 'dart:collection';
import 'components/array_of_visions.dart';
import 'components/reuse_card.dart';

class Steps extends StatelessWidget {
  static List<ReusableCard> tempList;
  ArrayOfVisions list = ArrayOfVisions(visions: tempList);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: FloatingActionButton.extended(
        onPressed: () {},
        icon: Icon(Icons.save),
        label: Text("Save"),
      ),
    );
  }
}
