import 'package:daily_sales_project/pages/AddExpense.dart';
import 'package:daily_sales_project/pages/Dashboard.dart';
import 'package:daily_sales_project/pages/ListItems.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      '/': (context) => Dashboard(),
      '/add': (context) => Addexpense(),
      '/list': (context) => ListItems(), // Register List Page Route
    },
  ));
}
