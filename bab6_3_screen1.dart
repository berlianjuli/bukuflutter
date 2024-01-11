import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  String name;
  Screen1({super.key,required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("screen1"),
        ),
        body: Container(
          child: Column(
            children: [
              Text("Nama :  $name"),
              OutlinedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Back'),
                ),
                
            ],
          )
        ),
    );
  }
}
