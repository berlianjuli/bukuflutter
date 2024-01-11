import 'package:flutter/material.dart';

main() {
  runApp(Contoh());
}

class Contoh extends StatelessWidget {
  Contoh({super.key});
  var title=['Title 1','Title 2','Title 3','Title 4','Title 5'];
  var subtitle=['Subtitle 1','Subtitle 2','Subtitle 3','Subtitle 4','Subtitle 5'];
  var iconLeading=[
    Icons.account_box,
    Icons.star,
    Icons.access_alarm,
    Icons.book,
    Icons.ac_unit
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(appBar: AppBar(title: Text("ListViewBuilder"),),body: ListView.builder(itemCount:title.length,itemBuilder: (BuildContext context,int index){
        return isiList(title[index],subtitle[index],iconLeading[index]);
      }),)
    );
  }
}

 Widget isiList(title,subtitle,iconLeading){
    return Card(
      color:const Color.fromARGB(255, 0, 123, 224),
      child: ListTile(
        title:Text(title,style:TextStyle(color: Colors.white)),
        subtitle: Text(subtitle,style:TextStyle(color: Colors.white)),
        trailing:Icon(Icons.menu,color: Colors.white,),
        leading:Icon(iconLeading,color: Colors.white,),
      ),
    );
  }
