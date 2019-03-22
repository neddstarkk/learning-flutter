import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("First Screen"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: RaisedButton(
                child: Text("Launch Screen"),
                onPressed: () {
                  //Navigate to second screen when tapped using named route
                  Navigator.pushNamed(context, '/second');
                },
              ),
            ),
            Center(
              child: FloatingActionButton(
                  child: Text("3"),
                  onPressed: () {
                    Navigator.pushNamed(context, '/third');
                  }
              ),
            ),
          ],
        )
    );
  }
}