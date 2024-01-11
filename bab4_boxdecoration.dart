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
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(100),
          decoration: BoxDecoration(
            border:Border.all(
              color: Colors.blue,
              width: 5
            )
          ),
          child: Text('Saya Belajar Flutter. '),
        )
      ),
    );
  }
}
