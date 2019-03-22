import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';


void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer App"),
        elevation: defaultTargetPlatform == TargetPlatform.android?5.0:0.0,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Nedheesh Hasija"),
              accountEmail: Text("nedheesh.hasija@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text("N"),
              ),
              otherAccountsPictures: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text("H"),
                )
              ],
            ),
            ListTile(
              title: Text("Page One"),
              trailing: Icon(Icons.arrow_upward),
            ),
            ListTile(
              title: Text("Page Two"),
              trailing: Icon(Icons.arrow_downward),
            ),
            Divider(),
            ListTile(
              title: Text("Close"),
              trailing: Icon(Icons.close),
              onTap: () => Navigator.of(context).pop( ),
            ),
          ],
        ),
      ),
      body: Container(
        child: Center(
          child: Text("Home Page"),
        ),
      ),
    );
  }
}