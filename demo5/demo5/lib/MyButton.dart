import 'package:flutter/material.dart';

class MyButton extends StatelessWidget{
   int i = 0;
   @override
     Widget build(BuildContext context) {
       
       GestureDetector detector = new GestureDetector(
         onTap: (){
           print("点击"+i.toString());
           i++;
         },
         child:new Container(
           height:36.0,
           padding: const EdgeInsets.all(8.0),
           margin: const EdgeInsets.symmetric( horizontal: 8.0),
           decoration: new BoxDecoration(
            borderRadius: new BorderRadius.circular(5.0),
             color: Colors.lightGreen[200],
           ),
           child: new Center(
             child: new Text("点击监听")
           ),
         )
       );

       return detector;
     }
}