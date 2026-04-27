import 'package:flutter/material.dart';
import 'package:basic_layout_flutter/pages/home_page.dart';
import 'package:basic_layout_flutter/pages/item_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => HomePage(),
      '/item': (context) => const ItemPage(),
    },
  ));
}