import 'package:flutter/material.dart';
import 'widgets/grid.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',


      theme: ThemeData.dark(),
      home: Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text(
                "Explore Memories",
                style: TextStyle(color: Colors.white70),
              ),
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(currentIndex: 0, items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.dashboard), title: Text("Memories")),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_circle_outline), title: Text("Home")),
            BottomNavigationBarItem(
                icon: Icon(Icons.search), title: Text("Search")),
          ]),
          body: Grid(),
      ),
    );
  }
}
