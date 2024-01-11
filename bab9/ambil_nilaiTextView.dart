import 'package:flutter/material.dart';

void main() {
   runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String? teks;
  final controllerNama = TextEditingController();
  final controllerAlamat = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Form"),
        ),
        body: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              TextField(
                controller: controllerNama,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Name',
                ),
              ),
              SizedBox(height: 15,),
              TextField(
                controller: controllerAlamat,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Address',
                ),
              ),
              SizedBox(height: 15,),
              ElevatedButton(onPressed: () {
                  teks=controllerNama.text+"\n"+controllerAlamat.text;
                  offer(context);

              }, child: Text("Submit"))
            ],
          ),
        ),
      ),
    );
  }
  offer(BuildContext context) {
    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Result"),
      content: Text(teks!),
      actions: [
        ElevatedButton(
          child: Text("OK"),
          onPressed: () {
            print("berhasil");
            Navigator.pop(context);
          },
        )
      ],
    );
    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
