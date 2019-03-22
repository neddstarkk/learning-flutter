import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  Widget build(context) {
    return MaterialApp(
      title: 'Stateful Widget Management',
      home: AppContents(),
    );
  }
}

class AppContents extends StatefulWidget {
  _AppContentsState createState() => _AppContentsState();
}

class _AppContentsState extends State<AppContents> {
  String myText = "always awefasd";
  bool someTextToggle = false;
  double _opacity = 1.0;
  double heightFactor = 1;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              someTextToggle = !someTextToggle;
              _opacity = someTextToggle ? 0.0 : 1.0;
            });
          },
          child: Icon(Icons.update)),
      appBar: AppBar(title: Text("Stateful widgets")),
      body: Container(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              AnimatedOpacity(
                opacity: _opacity,
                duration: Duration(seconds: 2),
                curve: Curves.easeInOut,
                child: FloatingActionButton.extended(
                    onPressed: () {},
                    icon: Icon(Icons.error),
                    label: Text("cool")),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: AnimatedContainer(
                  height: someTextToggle ? 100.0 : 10.0,
                    width: someTextToggle ? 100.0 : 10.0,
                    color: someTextToggle ? Colors.amber : Colors.red,
                    duration: Duration(seconds: 3),
                  curve: Curves.bounceOut,
                ),
              )
            ],
          ),

      ),

      ),
    );
  }
}
