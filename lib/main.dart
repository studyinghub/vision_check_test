import 'package:flutter/material.dart';
import 'home_page.dart';

void main() => runApp(TestVisionCheck());

class TestVisionCheck extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Raymond Yoo',
      theme: ThemeData().copyWith(
        secondaryHeaderColor: Color(0xFF15C96C),
        primaryColor: Color(0xFF15C96C),
        //scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Vision Test')),
          backgroundColor: Color(0xFF15C96C),
        ),
      ),
    );
  }
}
