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

        child: Card(
          child: Column(
            children: [
              ListTile(
                title: Text('Akademi Komunitas Negeri Pacitan',
                    style: TextStyle(fontWeight: FontWeight.w500)),
                subtitle: Text('Jalan Walanda Maramis',
                    style: TextStyle(fontWeight: FontWeight.w100)),
                leading: Icon(
                  Icons.home,
                  color: Colors.blue[500],
                ),
              ),
              const Divider(),
            ],
          ),
        ),
      ),
    ));
  }
}
