// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Home());
  }
}

class AppState {
  bool loading;
  String user;
  AppState(this.loading, this.user);
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final app = AppState(true, '');

  _delay() {
    Future.delayed(Duration(seconds: 1), () {
      setState(() => app.loading = false);
    });
  }

  @override
  void initState() {
    super.initState();
    _delay();
  }

  @override
  Widget build(BuildContext context) {
    if (app.loading) return _loading();
    if (app.user.isEmpty) return _signIn();
    return _main();
  }

  Widget _loading() {
    return Scaffold(
      appBar: AppBar(
        title: Text('Loading...'),
      ),
      body: Center(child: CircularProgressIndicator()),
    );
  }

  Widget _signIn() {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login...'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('ID: '),
            Text('Password: '),
            ElevatedButton(
              child: Text('login'),
              onPressed: () {
                setState(() {
                  app.loading = true;
                  app.user = 'yoonki';
                  _delay();
                });
              },
            )
          ],
        ),
      ),
    );
  }

  Widget _main() {
    return Scaffold(
      appBar: AppBar(
        title: Text(app.user),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.logout_rounded),
            onPressed: () {
              setState(() {
                app.loading = true;
                app.user = '';
                _delay();
              });
            },
          )
        ],
      ),
      body: Center(
        child: Text('contents'),
      ),
    );
  }
}
