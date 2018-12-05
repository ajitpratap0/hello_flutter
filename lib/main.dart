import 'package:flutter/material.dart';
import './screens/home.dart';

void main(List<String> args) {
  runApp(HelloFlutterApp());
}

class HelloFlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Hola",
      home: Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text(
                "Hola!",
                style: TextStyle(color: Colors.white, fontSize: 36),
              ),
            ),
            backgroundColor: Colors.deepOrange,
          ),
          body: Home()),
    );
  }
}
