import 'package:flutter/material.dart';
import 'home_page.dart';

// lambda main function
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Calculator App",
      theme: new ThemeData(
        primarySwatch: Colors.red),
        home: new HomePage(),
    );
  }
}
