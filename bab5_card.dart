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
        child: Column(
          children: [
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              elevation: 5,
              color: Colors.blue[300],
              child: Row(children: [
                Image(image: AssetImage("assets/AKNPAcitan.png"),width: 50, height: 70),
                Text(
                  "Akademi Komunitas Negeri Pacitan",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                )
              ]),
            )
          ],
        ),
      ),
    ));
  }
}
