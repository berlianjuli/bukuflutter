import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Screen 1")),
      body: Container(
        alignment: Alignment.topCenter,
          child: 
           Image.asset(
                "assets/meow.jpg",
                fit: BoxFit.fill,
              ),
      ),
    );
  }
}
