import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Contoh());
}

class Contoh extends StatefulWidget {
  const Contoh({super.key});

  @override
  State<Contoh> createState() => _ContohState();
}

const List<String> list = <String>['One', 'Two', 'Three', 'Four'];
String dropdownValue = list.first;

class _ContohState extends State<Contoh> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Contoh Button")),
        body: Container(
          padding: EdgeInsets.all(30),
          child: OutlinedButton(
            onPressed: () {
              print('Received click');
            },
            child: const Text('Click Me'),
          ),
        ),
      ),
    );
  }
}
