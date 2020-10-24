import 'dart:convert';

import 'package:clima_app/services/location.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

const api_key = '';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  double latitude;
  double longitude;
  Location location = Location();
  @override
  void initState() {
    super.initState();
    getLocation();
  }

  Future<String> getData() async {
    http.Response response = await http.get(
        'http://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$api_key');
    if (response.statusCode == 200) {
      String data = response.body;
      var weatherCondition = jsonDecode(data)['weather'][0]['id'];
      var temp = jsonDecode(data)['main']['temp'];
      var city = jsonDecode(data)['name'];
      print(weatherCondition);
      print(temp);
      print(city);
      print(latitude);
      print(longitude);
    } else {
      print(response.statusCode);
    }
    return response.body;
  }

  Future<void> getLocation() async {
    await location.getCurrentLocation();
    latitude = location.latitude;
    longitude = location.longitude;
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
