import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.amber,
      child: Center(
        child: Text(
          sayHello(),
          textDirection: TextDirection.ltr,
          style: TextStyle(color: Colors.white, fontSize: 28),
        ),
      ),
    );
  }

  // A simple dart function that returns a string
  String sayHello() {
    String hello = "Hello Flutter";
    DateTime now = DateTime.now();
    int min = now.minute;
    String minutes;

    int hour = now.hour;
    if (hour < 12) {
      hello = "Hello Flutter User, Good Morning!!";
    } else if (hour < 18) {
      hello = "Hello Flutter User, Good Afternoon!!";
    } else {
      hello = "Hello Flutter User, Good Evening!!";
    }

    minutes = (min < 10) ? "0" + min.toString() : min.toString();
    return hello+"\n It's now: "+hour.toString()+":"+minutes;
  }
}
