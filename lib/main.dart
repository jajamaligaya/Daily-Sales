import 'package:daily_sales_project/pages/AddExpense.dart';
import 'package:daily_sales_project/pages/Dashboard.dart';
import 'package:daily_sales_project/pages/ListItems.dart';
import 'package:flutter/material.dart';
import 'package:daily_sales_project/worldtime/pages/homes.dart';
import 'package:daily_sales_project/worldtime/pages/choose_location.dart';
import 'package:daily_sales_project/worldtime/pages/loading.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/homes', // or '/home' if you define it below
    routes: {
      '/': (context) => Loading(),
      '/homes': (context) => Homes(),
      '/home': (context) => Homes(),
      '/location': (context) => ChooseLocation(),
      '/dashboard': (context) => Dashboard(),
      '/add': (context) => Addexpense(),
      '/list': (context) => ListItems(),
    },
  ));
}

