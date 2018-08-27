import 'package:flutter/material.dart';

class ImageDemo extends StatelessWidget{
    @override
      Widget build(BuildContext context) {
        Scaffold scaffold = new Scaffold(
          appBar: new AppBar(
            title: new Text('从本地获取图像'),
          ),
          body: new Center(
            child : new Container(
               decoration: new BoxDecoration(
                 image: new DecorationImage( image: AssetImage('images/hourse.jpg')),
               ),
            )
          ),
        );
        return scaffold;
      } 
}