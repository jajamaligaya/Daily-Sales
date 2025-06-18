import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title:Text('Daily Sales'),
        backgroundColor: Colors.teal[200],
      ),
      body:Center( // <-- centers horizontally
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('You', style: TextStyle(
              fontSize: 30,
              backgroundColor: Colors.pink[100],
              fontFamily: 'Times New Roman',
            )
            ),
            Text('are always', style: TextStyle(
                fontSize: 40,
                backgroundColor: Colors.pink[300],
                fontFamily: 'Arial',
            )),
            Text('Gorgeous', style: TextStyle(
                fontSize: 60,
                backgroundColor: Colors.pink[600],
                fontFamily: 'Times New Roman',
                fontWeight: FontWeight.bold,
            )),
          ],
        ),
    ),
    ),
  ));
}

