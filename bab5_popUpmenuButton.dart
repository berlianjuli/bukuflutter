import 'package:flutter/material.dart';

void main(List<String> args) {
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
      home: Scaffold(
        appBar: AppBar(title: Text("Contoh Button"), actions: [
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(child: Text("Settings"),value: "settings",),
              PopupMenuItem(child: Text("Options"),value: "options",),
              PopupMenuItem(child: Text("Logout"),value: "logout",)
            ],
            onSelected: (value) {
              if(value=='settings'){
                print("Menu Setting");
              }else if(value=="options"){
                print("Menu Options");
              }else{
                print("Menu Logout");
              }
            },
          ),
        ]),
        body: Container(),
      ),
    );
  }
}
