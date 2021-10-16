// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: home());
  }

  Widget home() {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu),
          title: Text('Title메인'),
          actions: [
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
        body: body());
  }

  Widget body() {
    return Container(
        padding: const EdgeInsets.all(20),
        // decoration: const BoxDecoration(color: Colors.lime),
        child: testlist());
  }

  Widget testlist() {
    List<String> items = List.generate(20, (index) => "Item $index");
    // for (var i = 0; i < 10; i++) {
    //   items.add('bbbb');
    // }
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(items[index]),
          subtitle: Text('subtitle sample ...'),
        );
      },
    );
  }
}
