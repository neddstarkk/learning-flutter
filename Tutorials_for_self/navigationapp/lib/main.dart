import 'package:flutter/material.dart';
import 'src/widgets/secondscreen.dart';
import 'src/widgets/firstscreen.dart';
import 'src/widgets/thirdscreen.dart';

void main() {
  runApp(Run());
}

class Run extends StatelessWidget {
 @override
  Widget build(BuildContext context) {
   return MaterialApp(
     title: "routes demo",

     // Start the app with the '/' named route. In our case, the app will start
     // on the FirstScreen Widget
     initialRoute: '/',
     routes: {
       // When we navigate to the "/" route, build the FirstScreen Widget
       '/': (context) => FirstScreen(),
       // When we navigate to the '/second' route, build the SecondScreen Widget
       '/second': (context) => SecondScreen(),
       '/third':(context) => ThirdScreen(),
     },
   );
  }
}