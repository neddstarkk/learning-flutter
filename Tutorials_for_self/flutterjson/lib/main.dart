import 'package:flutter/material.dart';
import 'dart:convert';

void main() => runApp(MaterialApp(
      home: HomePage(),
      theme: ThemeData(primarySwatch: Colors.teal),
    ));

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  List data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Load Json App"),
      ),
      body: Container(
        child: Center(
          child: FutureBuilder(
            future: DefaultAssetBundle.of(context)
                .loadString('load_json/person.json'),
            builder: (context, snapshot) {
              var myData = json.decode(snapshot.data.toString());

              return ListView.builder(
                  itemCount: myData == null ? 0 : myData.length,
                  itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Text("Name: " + myData[index]['name']),
                      Text("Age: " + myData[index]['age']),
                      Text("Height: " + myData[index]['height']),
                      Text("Gender: " + myData[index]['gender']),
                      Text("Haircolor: " + myData[index]['haircolor']),
                    ],
                  ),
                );
              }
              );
            },
          ),
        ),
      ),
    );
  }
}
