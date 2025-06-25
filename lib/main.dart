import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Profile()));
}

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DailySales'),
        backgroundColor: Colors.tealAccent[100],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 30),
            child: Center(
              child: Column(
                children: [
                  Text(
                    'User Profile',
                    style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.person,
                    size: 100,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Name',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text('Jael Maligaya'),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Email',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text('jael@example.com'),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Company',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text('BSU Balayan'),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Contact Number',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text('09151234567'),
              ],
            ),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.only(top: 40),
              child: Container(
                width: 300.0,
                height: 60.0,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.tealAccent.shade100,
                    foregroundColor: Colors.black,
                    ),
                  onPressed: () {
                    // Button onPressed action
                  },
                  child: Row (
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:[
                      Icon(Icons.logout),
                      SizedBox(width:10),
                      Text('Logout'),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
