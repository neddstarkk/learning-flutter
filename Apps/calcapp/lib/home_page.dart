import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {

  var num1 = 0.0, num2 = 0.0, sum = 0.0;

  TextEditingController t1 = TextEditingController(text: "0");
  TextEditingController t2 = TextEditingController(text: "0");

  void doAddition() {
    this.setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      sum = num1 + num2;
    });
  }
void doSubtraction() {
    this.setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      sum = num1 - num2;
    });
  }
void doMultiplication() {
    this.setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      sum = num1 * num2;
    });
  }
void doDivision() {
    this.setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      sum = num1/num2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: Container(
        padding: EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Output: $sum",
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.purple,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: "Enter number 1"),
              controller: t1,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: "Enter number 2"),
              controller: t2,
            ),
            Padding(padding: EdgeInsets.only(top: 20.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(
                  child: Text("+"),
                  color: Colors.greenAccent,
                  onPressed: () => doAddition(),
                ),
                MaterialButton(
                  child: Text("-"),
                  color: Colors.greenAccent,
                  onPressed: () => doSubtraction(),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(
                  child: Text("*"),
                  color: Colors.greenAccent,
                  onPressed: () => doMultiplication(),
                ),
                MaterialButton(
                  color: Colors.greenAccent,
                  child: Text("/"),
                  onPressed: () => doDivision(),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
