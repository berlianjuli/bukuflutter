import 'package:flutter/material.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Hei"),
        ),
        body: Container(
          child: Column(
            children: [
              OutlinedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '1');
                  },
                  child: const Text('Go to Screen 1'),
                ),
                OutlinedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '2');
                  },
                  child: const Text('Go to Screen 2'),
                ),
            ],
          )
      ),
    );
  }
}
