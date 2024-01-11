import 'package:flutter/material.dart';
import 'package:flutter_crud/models/jurusan.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import 'config.dart';

class Home extends StatefulWidget {
  Home({super.key});
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  late Future<List<Jurusan>> jurusan;

  @override
  void initState() {
    super.initState();
    jurusan = getJurusan();
  }

  Future<List<Jurusan>> getJurusan() async {
    final response = await http.get(Uri.parse("${URL_PREFIX}/api/jurusans"));
    final jsonResponse =
        convert.jsonDecode(response.body) as Map<String, dynamic>;
    final items = jsonResponse["data"].cast<Map<dynamic, dynamic>>();
    List<Jurusan> jurusan = items.map<Jurusan>((json) {
      return Jurusan.fromJson(json);
    }).toList();

    return jurusan;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jurusan'),
      ),
      body: Center(
        child: FutureBuilder<List<Jurusan>>(
          future: jurusan,
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            // By default, show a loading spinner.
            if (!snapshot.hasData) {
              return CircularProgressIndicator();
            }
            else {
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context, index) {
                  var data = snapshot.data[index];
                  return Card(
                    child: ListTile(
                      leading: Icon(Icons.work),
                      trailing: Icon(Icons.work),
                      title: Text(
                        data.namaJurusan,
                        style: TextStyle(fontSize: 20),
                      ),
                      onTap: () {
                          //aksi
                      },
                    ),
                  );
                },
              );
            }
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          //aksi
        },
      ),
    );
  }
}
