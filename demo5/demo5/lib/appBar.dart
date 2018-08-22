import 'package:flutter/material.dart';
class MyAppBar extends StatelessWidget{
  
  final Widget title;
  MyAppBar({this.title});

  @override
    Widget build(BuildContext context) {
      Container content =  new Container(
        height: 56.0,
        padding: const EdgeInsets.symmetric(horizontal:8.0),
        decoration: new BoxDecoration(color:Colors.blue[500]),
        child: new Row(
          children:<Widget>[
            new IconButton( 
              icon:new Icon(Icons.menu),
              tooltip: '菜单导航',
              onPressed: null,
            ),
            new Expanded(
              child :title,
            ),
            new IconButton(
              icon:new Icon(Icons.search),
              tooltip:'搜索',
              onPressed: null,
            )
          ]
        ),

      );
      return content;
    }  
}

class MyScaffold extends StatelessWidget{
  @override
    Widget build(BuildContext context) {
      Material material = new Material(
        child: new Column(
          children: <Widget>[
            new MyAppBar(
               title: new Text('标题', style: Theme.of(context).primaryTextTheme.title,),
            ),
            new Expanded(
              child: new Center(
                child: new Text('Hello world')
              )
            )

          ],

        ),

      );
      return material;
    }
  
}
