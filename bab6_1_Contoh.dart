import 'package:flutter/material.dart';
import 'screen0.dart';

main() {
  runApp(Contoh());
}

class Contoh extends StatelessWidget {
  const Contoh({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(appBar: AppBar(title: Text('Home'),),body: screen0(),),
    );
  }
}
