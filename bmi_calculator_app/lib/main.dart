import 'package:flutter/material.dart';
import 'input_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0C1134),
        scaffoldBackgroundColor: Color(0xFF0C1134),
        textTheme: TextTheme(
          bodyText1: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      title: 'Flutter Demo',
      home: InputPage(),
    );
  }
}
