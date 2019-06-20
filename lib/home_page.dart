import 'package:flutter/material.dart';
import 'components/reuse_card.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData().copyWith(
        secondaryHeaderColor: Color(0xFF15C96C),
        primaryColor: Color(0xFFFFFFFF),
        scaffoldBackgroundColor: Color(0xFFD9DFE3),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'My Visions',
            style: TextStyle(
              color: Color(0xFF39414C),
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Color(0xFFFFFFFF),
        ),
        body: Container(
          child: ReusableCard(
            cardChild: Container(
              height: 300,
              width: 200,
              child: IconButton(
                icon: Icon(Icons.add),
                iconSize: 100,
                onPressed: () {
                  //add a dream
                  print('clicked');
                },
              ),
            ),
          ),
        ),
        bottomNavigationBar: new BottomAppBar(
          color: Color(0xFFFFFFFF),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              new IconButton(
                icon: new Icon(
                  Icons.gps_fixed,
                  size: 35.0,
                ),
                onPressed: () {
                  //when pressed this should lead to the target's page
                },
              ),
              new IconButton(
                icon: new Icon(
                  Icons.home,
                  size: 35.0,
                ),
                onPressed: () {
                  //when pressed this should lead to the home page again
                },
              ),
              new IconButton(
                icon: new Icon(
                  Icons.settings,
                  size: 33.0,
                ),
                onPressed: () {
                  //this should lead to the settings section
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
