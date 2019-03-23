import 'package:flutter/material.dart';
import '../screens/grid_file.dart';

class Grid extends StatefulWidget {
  @override
  _GridState createState() => _GridState();
}

class _GridState extends State<Grid> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 10,
      padding: EdgeInsets.all(2.0),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (context, i ){
        print(i);
        return GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (__)=> ImageDetailScreen('photo${i+1}.jpg')));
          },
          child: Card(
            margin: EdgeInsets.all(5.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4.0),
            ),
            child: Image.asset('photo${i+1}.jpg', fit: BoxFit.fill),
          ),
        );
      },
    );
  }
}


