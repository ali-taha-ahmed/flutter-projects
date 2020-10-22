import 'package:clima_app/services/location.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  Location location = Location();
  @override
  void initState() {
    super.initState();
    getLocation();
  }

  Future<String> getData() async {
    http.Response response = await http.get(
        'http://api.openweathermap.org/data/2.5/weather?lat=35&lon=139&appid=a00df31830a2800e9cbad0326c91f847');
    if (response.statusCode == 200) {
      print(response.body);
    } else {
      print(response.statusCode);
    }
    return response.body;
  }

  Future<void> getLocation() async {
    await location.getCurrentLocation();
    print(location.latitude);
    print(location.longitude);
  }

  @override
  Widget build(BuildContext context) {
    getData();
    return Scaffold();
  }
}
