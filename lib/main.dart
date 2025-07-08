import 'package:flutter/material.dart';
import 'package:daily_sales_project/pages/AddExpense.dart';
import 'package:daily_sales_project/pages/Dashboard.dart';
import 'package:daily_sales_project/pages/ListItems.dart';
import 'package:daily_sales_project/worldtime/pages/homes.dart';
import 'package:daily_sales_project/worldtime/pages/choose_location.dart';
import 'package:daily_sales_project/worldtime/pages/loading.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/', //
      routes: {
        '/': (context) => const Loading(),
        '/homes': (context) => const Homes(),
        '/home': (context) => const Homes(), //
        '/location': (context) => const ChooseLocation(),
        '/dashboard': (context) => const Dashboard(),
        '/add': (context) => const Addexpense(),
        '/list': (context) => const ListItems(),
      },
    ),
  );
}
