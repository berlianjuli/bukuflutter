import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Contoh());
}

var foto = "assets/mawar.jpg";

class Contoh extends StatefulWidget {
  const Contoh({super.key});

  @override
  State<Contoh> createState() => _ContohState();
}

class _ContohState extends State<Contoh> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Contoh Button")),
        body: Container(
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                     
                    });
                  },
                  child: const Text('Elevated Button'),
                ),
                 TextButton(
                  onPressed: () {
                    setState(() {
                     
                    });
                  },
                  child: Text('Text Button'),
                ),
               TextButton(
                  onPressed: () {
                    setState(() {
                     
                    });
                  },
                  child: Icon(Icons.access_alarm),
                ), 
            ],
          ),
        ),
      ),
    );
  }
}
