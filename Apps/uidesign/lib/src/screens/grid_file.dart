import 'package:flutter/material.dart';

class ImageDetailScreen extends StatefulWidget {

  String path;

  ImageDetailScreen(this.path);

  @override
  _ImageDetailScreenState createState() => _ImageDetailScreenState();
}

class _ImageDetailScreenState extends State<ImageDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Details"),
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              }
          ),
        ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height*0.7,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Image.asset(widget.path, fit: BoxFit.cover),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Here the text pertaining to the image will come",textAlign: TextAlign.justify,),
          ),
        ],
      ),
    );
  }
}