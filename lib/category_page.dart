import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
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
          ),
          new Category(
            text: "Spiritual",
          ),
          new Category(
            text: "Career",
          ),
          new Category(
            text: "Relationships",
          ),
          new Category(
            text: "Traveling",
          ),
          new Category(
            text: "Studying",
          ),
          new Category(
            text: "Giving Back/Philanthropy",
          ),
          new Category(
            text: "Entrepreneurship",
          ),
          new Category(
            text: "Athletics",
          ),
          new Category(
            text: "Other",
          ),
        ],
      ),
    ));
  }
}

class Category extends StatelessWidget {
  Category({@required this.text});
  final String text;
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
          color: Colors.white,
          onPressed: () {},
          child: Row(
            children: <Widget>[
              Text(
                text,
                style: TextStyle(fontSize: 15),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
