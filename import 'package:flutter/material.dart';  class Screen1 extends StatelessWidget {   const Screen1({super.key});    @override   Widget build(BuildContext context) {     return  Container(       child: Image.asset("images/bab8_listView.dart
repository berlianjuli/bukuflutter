import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(appBar: AppBar(title: Text("ListView"),),body: ListView(children: [
        ListTile(
          leading: Icon(Icons.phone),
          title: Text("Title"),
          subtitle: Text("Subtitle"),
          trailing: Icon(Icons.shopping_cart),
          onTap: (){
            print("aa");
          },
        ),ListTile(
          leading: Icon(Icons.phone),
          title: Text("Title"),
          subtitle: Text("Subtitle"),
          trailing: Icon(Icons.shopping_cart),
          onTap: (){
            print("bb");
          },
        )
      ],),),
    );
  }
}
