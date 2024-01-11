import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Aplikasiku"),
        ),body: Container(
          child: Image.asset('assets/download.png')
        )
      ),
    );
  }
}
