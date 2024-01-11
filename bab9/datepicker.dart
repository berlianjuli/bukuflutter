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
  DateTime selectedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: Container(
        child: Row(
          children: [
            Text(
                "${selectedDate.day}-${selectedDate.month}-${selectedDate.year}"),
            IconButton(
                icon: Icon(Icons.date_range),
                onPressed: () async {
                  DateTime? newDate = await showDatePicker(
                      context: context,
                      initialDate: selectedDate,
                      firstDate: DateTime(1970),
                      lastDate: DateTime(2050));
                  if (newDate != null) {
                    setState(() {
                      selectedDate = newDate;
                    });
                  }
                })
          ],
        ),
      ),
    ));
  }
}

