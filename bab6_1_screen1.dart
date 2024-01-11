import 'package:flutter/material.dart';

class screen1 extends StatelessWidget {
  const screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return 
        Scaffold(
        appBar: AppBar(
          title: Text("Screen 2"),
        ),
        body: Container(
          child: Column(
            children: [
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
