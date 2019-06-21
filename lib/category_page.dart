import 'package:flutter/material.dart';
import 'step_builder.dart';

IconData usersIconData = Icons.favorite;
String chosenCategoryText = "";

class CategoryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.grey,
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
          "Choose a Catergory",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: Color(0xFF15C96C),
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          new Category(
            text: "Fitness",
            iconData: Icons.fitness_center,
          ),
          new Category(
            text: "Spiritual",
            iconData: Icons.mood,
          ),
          new Category(
            text: "Career",
            iconData: Icons.next_week,
          ),
          new Category(
            text: "Relationships",
            iconData: Icons.favorite,
          ),
          new Category(
            text: "Traveling",
            iconData: Icons.flight,
          ),
          new Category(
            text: "Studying",
            iconData: Icons.mode_edit,
          ),
          new Category(
            text: "Giving Back/Philanthropy",
            iconData: Icons.nature_people,
          ),
          new Category(
            text: "Entrepreneurship",
            iconData: Icons.lightbulb_outline,
          ),
          new Category(
            text: "Athletics",
            iconData: Icons.directions_bike,
          ),
          new Category(
            text: "Other",
            iconData: Icons.more_horiz,
          ),
        ],
      ),
    ));
  }
}

class Category extends StatelessWidget {
  Category({@required this.text, @required this.iconData});
  final String text;
  final IconData iconData;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(color: Colors.grey, width: 0.1),
            bottom: BorderSide(
              color: Colors.black,
              width: 0.5,
            ),
          ),
        ),
        child: FlatButton(
          padding: EdgeInsets.all(30),
          color: Colors.white,
          onPressed: () {
            usersIconData = this.iconData;
            chosenCategoryText = this.text;
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Steps(),
              ),
            );
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                text,
                style: TextStyle(fontSize: 15),
              ),
              Icon(
                iconData,
                size: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
