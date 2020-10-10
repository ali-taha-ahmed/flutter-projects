import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "I'm poor app",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Im poor App"),
          backgroundColor: Colors.tealAccent,
        ),
        body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            verticalDirection: VerticalDirection.up,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 150.0,
                width: 150.0,
                padding: EdgeInsets.all(18.5),
                child: Image.asset("images/charcoal.png"),
              ),
              Container(
                height: 150.0,
                width: 150.0,
                padding: EdgeInsets.all(18.5),
                child: Image.asset("images/charcoal.png"),
              ),
              Container(
                height: 150.0,
                width: 150.0,
                padding: EdgeInsets.all(18.5),
                child: Image.asset("images/charcoal.png"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
