import 'package:flutter/material.dart';
import 'screen1.dart';

class screen0 extends StatelessWidget {
  const screen0({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
          child: OutlinedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder:(context) {
                        return Screen1(name:"Berlian Juliartha",);
                      }
                    ));
                  },
                  child: const Text('Go to Screen 1'),
                ),
        );
  }
}
