import 'package:flutter/material.dart';
import 'homePage.dart';
import 'screen1.dart';

main() {
  runApp(Contoh());
}

class Contoh extends StatefulWidget {
  const Contoh({super.key});

  @override
  State<Contoh> createState() => _ContohState();
}

class _ContohState extends State<Contoh> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:homePage(),
    );
  }
}

import 'package:flutter/material.dart';
import 'screen1.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Home Page"),
        ),
        body: Container(
            child: GestureDetector(
                child: Image.asset(
          "assets/meow.jpg",
          width: 200,
          height: 200,
          alignment:Alignment.topCenter,
        ),onTap: () {
          Navigator.push(context,MaterialPageRoute(builder: (context){
            return Screen1();
          },));
        },)),
      ),
    );
  }
}
