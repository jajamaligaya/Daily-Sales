import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('DailySales'),
        backgroundColor: Colors.tealAccent[100],
      ) ,
      body: Column(
        children: [
          Container(
            margin:EdgeInsets.all(10),
            padding:EdgeInsets.symmetric(vertical:10, horizontal: 10),
            child: Row (
                children: [
                  Text('Name:'),
                  Text('Jael'),
                ]
            ),
          ),
          Container(
            margin:EdgeInsets.symmetric(vertical:5, horizontal: 10),
            padding:EdgeInsets.symmetric(vertical:10, horizontal: 10),
            child: Row (
                children: [
                  Text('Age:'),
                  Text('21 years old'),
                ]
            ),
          ),
          Container(
            margin:EdgeInsets.fromLTRB(5, 4, 3, 2),
            padding:EdgeInsets.symmetric(vertical:10, horizontal: 10),
            child: Row (
                children: [
                  Text('Gender:'),
                  Text('Female'),
                ]
            ),
          ),
        ],
      ),
    ),
  ));
}