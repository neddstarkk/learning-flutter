import 'package:flutter/material.dart';

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
            Navigator.pushNamed(context, '/widget');
          },
          child: Container(
            margin: EdgeInsets.all(5.0),
            decoration: BoxDecoration(
              border: Border(),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Image.asset('photo${i+1}.jpg', fit: BoxFit.cover,),
          ),
        );
      },
    );
  }
}


