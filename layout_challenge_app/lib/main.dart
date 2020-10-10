import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.teal,
      body:
        SafeArea(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                       Expanded(
                         child: Container(
                           width: 100,
                           decoration: BoxDecoration(
                             color: Colors.red,
                           ),
                      ),
                       ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.yellow,
                        ),
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.green,
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Expanded(
                        child: Container(
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
        )
    );
  }
}
