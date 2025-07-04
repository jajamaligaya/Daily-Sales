import 'package:daily_sales_project/pages/ItemCard.dart';
import 'package:daily_sales_project/pages/Laminates.dart';
import 'package:flutter/material.dart';

class ListItems extends StatefulWidget {
  const ListItems({super.key});

  @override
  State<ListItems> createState() => _ListItemsState();
}

class _ListItemsState extends State<ListItems> {
  List<Laminates> laminates = [
    Laminates(name: 'letter', description: '8.5x11', amount: 25),
    Laminates(name: 'letter', description: '8.5x11', amount: 25),
    Laminates(name: 'legal', description: '8.5x13', amount: 35),
    Laminates(name: 'letter', description: '8.5x13', amount: 35),
    Laminates(name: 'a4', description: '8.27x11.69', amount: 25),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Expense Tracker',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.tealAccent[100],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: Center(
              child: Text(
                'My Sales',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: laminates.map((laminate) {
                return ItemCard(laminates: laminate);
              }).toList(),
            ),
          ),
        ],
      ),

      // Add Expense Button lang ito, no more Dashboard button kasi may back button na
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: 'addBtn',
            onPressed: () {
              Navigator.pushNamed(context, '/add');
            },
            child: Icon(Icons.add_box_rounded),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}