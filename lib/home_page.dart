import 'package:flutter/material.dart';
import 'reuse_card.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData().copyWith(
        secondaryHeaderColor: Color(0xFF15C96C),
        primaryColor: Color(0xFF15C96C),
        scaffoldBackgroundColor: Color(0xFFD9DFE3),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Visions'),
          backgroundColor: Color(0xFF15C96C),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: new ReusableCard(
                      colour: Color(0xFFFFFFFF),
                    ),
                  ),
                  Expanded(
                    child: new ReusableCard(
                      colour: Color(0xFFFFFFFF),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: new ReusableCard(
                      colour: Color(0xFFFFFFFF),
                    ),
                  ),
                  Expanded(
                    child: new ReusableCard(
                      colour: Color(0xFFFFFFFF),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: new FloatingActionButton(
          child: new Icon(Icons.add),
          onPressed: () {},
        ),
        bottomNavigationBar: new BottomAppBar(
          color: Colors.green,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              new IconButton(
                icon: new Icon(Icons.menu),
                onPressed: () {},
              ),
              new IconButton(
                icon: new Icon(Icons.search),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
