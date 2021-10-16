// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Home());
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int i = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Title'), actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  i++;
                });
              },
              icon: Icon(Icons.security))
        ]),
        body: Name(i: i));
  }
}

class Name extends StatelessWidget {
  const Name({Key? key, this.i = 0}) : super(key: key);
  final int i;

  @override
  Widget build(BuildContext context) {
    if (i % 3 == 0) {
      return CircularProgressIndicator();
    } else if (i % 3 == 1) {
      return Icon(Icons.security);
    } else {
      return Text('clicked $i');
    }
  }
}
