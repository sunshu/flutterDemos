import 'package:flutter/material.dart';

class ImageDemo extends StatelessWidget{
    @override
      Widget build(BuildContext context) {
        Scaffold scaffold = new Scaffold(
          appBar: new AppBar(
            title: new Text('从URL 获取图像'),
          ),
          body: new Center(
            child : new Image.network(
              'http://pic.baike.soso.com/p/20130828/20130828161137-1346445960.jpghttp://pic.baike.soso.com/p/20130828/20130828161137-1346445960.jpg',
               scale: 2.0,
            )
          ),
        );
        return scaffold;
      } 
}