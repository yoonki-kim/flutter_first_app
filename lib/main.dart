import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            leading: Icon(Icons.menu),
            title: Text('title'),
            actions: <Widget>[
              IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    print('search');
                  }),
              IconButton(
                  icon: Icon(Icons.select_all),
                  onPressed: () {
                    print('select');
                  })
            ],
          ),
          body: Center(child: Text('body'))),
    );
  }
}
