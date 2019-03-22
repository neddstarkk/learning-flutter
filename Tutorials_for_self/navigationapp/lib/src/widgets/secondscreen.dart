import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second screen"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            //Navigate back to first screen by popping the current route
            // off the stack
            Navigator.pop(context);
          },
          child: Text("Go back!"),
        ),
      ),
    );
  }
}
