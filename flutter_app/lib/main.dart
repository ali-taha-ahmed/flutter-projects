import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "im poor app",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Im poor app to example"),
          backgroundColor: Colors.tealAccent,
        ),
        body: Center(
          child: Image.asset("images/charcoal.png"),
        ),
      ),
    );

  }
}