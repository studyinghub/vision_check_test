import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard(
      {@required this.colour,
      this.cardChild,
      this.onPressed,
      this.setState,
      this.iconForButton});
  final Color colour;
  final Widget cardChild;
  final Function onPressed;
  final Function setState;
  final IconData iconForButton;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: colour,
        ),
      ),
    );
  }
}
