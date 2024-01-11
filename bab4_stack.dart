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
          ),
          body: Container(
            alignment: Alignment.topCenter,
          child: Stack(
            alignment: const Alignment(0.1, 0.8),
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage('assets/download.png'),
                radius: 100,
              ),
              Container(
                
                decoration: const BoxDecoration(
                  color: Colors.black45,
                ),
                child: const Text(
                  'KONFIGURASI',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          )),)
    );
  }
}
