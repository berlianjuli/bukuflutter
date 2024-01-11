import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var foto;
  @override
  void initState() {
    super.initState();
    foto="https://awsimages.detik.net.id/community/media/visual/2023/01/18/bunga-kamboja.png?w=600&q=90";
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Stateless widget"),),
        body: Container(
          child: Column(
            children: [
              ElevatedButton(onPressed: (){
                setState(() {
                  foto="https://awsimages.detik.net.id/community/media/visual/2022/06/29/ilustrasi-bunga-aster_169.jpeg?w=600&q=90";
                });
              }, child: Text("Ganti Gambar")),
              Image.network(foto),
              
            ],
          ),
        ),
      ),
    );
  }
}
