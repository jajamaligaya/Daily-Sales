import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Expense Tracker',
          style: TextStyle(),
        ),
        backgroundColor: Colors.tealAccent[100],
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(bottom: 80), // reserve space for bottom bar
            child: Column(
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
                    padding: EdgeInsets.only(top: 40, bottom: 20),
                    child: Container(
                      width: 300.0,
                      height: 60.0,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.tealAccent.shade100,
                          foregroundColor: Colors.black,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.logout),
                            SizedBox(width: 10),
                            Text('Logout'),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),

      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        shape: CircularNotchedRectangle(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/add');
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.add_circle_outline, color: Colors.black),
                    Text('Add Expense', style: TextStyle(color: Colors.black, fontSize: 10)),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/list');
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.list_alt, color: Colors.black),
                    Text('Sales List', style: TextStyle(color: Colors.black, fontSize: 10)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
