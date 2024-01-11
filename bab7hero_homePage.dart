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
                child: Hero(
                  tag: 'dash',
                  child: Image.asset(
                          "assets/meow.jpg",
                          width: 200,
                          height: 200,
                          alignment:Alignment.topCenter,
                        ),
                ),onTap: () {
          Navigator.push(context,MaterialPageRoute(builder: (context){
            return Screen1();
          },));
        },)),
      ),
    );
  }
}
