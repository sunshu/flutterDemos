import 'package:flutter/material.dart';
// import 'ImageDemo.dart';
import 'LocalImage.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {

  @override
    Widget build(BuildContext context) {
      
      return new MaterialApp(
        title : "title",
        home: new Iview(),
      );
    }  
}

class Iview extends StatelessWidget{

  @override
   Widget build(BuildContext context){
     DecoratedBox box = new DecoratedBox(
        decoration: new BoxDecoration(
          image:new DecorationImage(
            image:new AssetImage('images/hourse.jpg'),
          )
        ),
     );

     return box;

   }
}