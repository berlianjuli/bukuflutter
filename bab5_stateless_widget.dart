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
  var foto="https://asset.kompas.com/crops/kZC3PG_Rx31PHEIK5Z-qwNq02iM=/118x255:1651x1277/750x500/data/photo/2021/07/02/60de7f2cd33ec.jpg";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Stateless widget"),),
        body: Container(
          child: Column(
            children: [
              ElevatedButton(onPressed: (){
                foto="https://awsimages.detik.net.id/community/media/visual/2022/06/29/ilustrasi-bunga-aster_169.jpeg?w=600&q=90";
              }, child: Text("Ganti Gambar")),
              Image.network(foto),
            ],
          ),
        ),
      ),
    );
  }
}
