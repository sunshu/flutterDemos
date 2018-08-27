import 'package:flutter/material.dart';

// 横竖比例

class AspectRatioDemo extends StatelessWidget{
  
    @override
      Widget build(BuildContext context) {
        
        return new Scaffold(
          appBar: new AppBar(
            title:new Text("size 固定"),
          ),
          body: new AspectRatio (
             aspectRatio: 2/1,
             child: new Container(
               decoration : new BoxDecoration(
                  color: Colors.lightGreen,
               )
             ),

          ),
        );
      }

}



// 大小固定

class SizeDemo extends StatelessWidget{
  
    @override
      Widget build(BuildContext context) {
        
        return new Scaffold(
          appBar: new AppBar(
            title:new Text("size 固定"),
          ),
          body: new SizedBox(
            width : 100.0,
            height : 80.0,
             child: new Container(
               decoration : new BoxDecoration(
                  color: Colors.lightBlue,
               )
             ),

          ),
        );
      }

}


// 对齐
class RlDemo1 extends StatelessWidget{

   @override
   Widget build(BuildContext context){
      return new Scaffold(
        appBar: new AppBar(
          title:new Text("对齐"),
        ),
        body: new Stack(
          children: <Widget>[
            new Align(
              alignment: FractionalOffset.bottomRight,
              child : new Image.network('http://up.qqjia.com/z/25/tu32710_10.jpg')
            ),
            new Align(
               alignment: FractionalOffset.topCenter,
               child : new Image.network('http://up.qqjia.com/z/25/tu32710_10.jpg')
            )

          ],

        ),


      );
   }
}

class PaddingDemo extends StatelessWidget{

    @override
    Widget build(BuildContext context){

      return new Scaffold(
        appBar: new AppBar(
          title:new Text("Padding"),
        ),
        body: new Padding(
           padding: const EdgeInsets.only(top: 20.0),
           child: new RaisedButton(
              color: Colors.amber,             

              child:(
                new Text("文字")
                ),
             
           )
        )
      );
    }
}



//  偏移
class RlDemo extends StatelessWidget{

   @override
    Widget build(BuildContext context){
      return new Scaffold(
        appBar : new AppBar(
          title : new Text('title'),
        ),
        body: new Center(
          child: new Stack(
            children: <Widget>[
              new Image.network("http://img2.cxtuku.com/00/13/12/s97783873391.jpg"),
              new Positioned(
                left :35.0,
                right : 35.0,
                top:45.0,
                child: new Text("desc",
                style:new TextStyle(
                   fontSize: 20.0,
                    fontFamily: 'serif',
                )
                )
              )


            ],  


          ),

        )
      );


    } 

}