import 'package:flutter/material.dart';
import 'homePage.dart';
import 'screen1.dart';

main() {
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
      home:homePage(),
    );
  }
}
