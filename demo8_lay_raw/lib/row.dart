import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Scaffold scaffold = new Scaffold(
      appBar: new AppBar(
        title: new Text("水平布局"),
      ),
      body: new Row(
        children: <Widget>[
          new RaisedButton(
            onPressed: () {
              print("点击第一个");
            },
            color: Colors.red,
            child: new Text("红色按钮"),
          ),
          new Flexible(
              flex: 1,
              child: new RaisedButton(
                onPressed: () {
                  print("点击第二个");
                },
                color: Colors.yellow,
                child: new Text("黄色按钮"),
              )),
          new RaisedButton(
            onPressed: () {
              print("点击第三个");
            },
            color: Colors.pink,
            child: new Text("粉色按钮"),
          )
        ],
      ),
    );

    return scaffold;
  }
}

class LayoutDemo1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Scaffold scaffold = new Scaffold(
      appBar: new AppBar(
        title: new Text("水平布局"),
      ),
      body: new Row(
        children: <Widget>[
          new RaisedButton(
            onPressed: () {
              print("点击第一个");
            },
            color: Colors.red,
            child: new Text("红色按钮"),
          ),
          // new Flexible(
          //   flex:1,
          //   child:new RaisedButton(
          //     onPressed: (){
          //      print("点击第二个");
          //     },
          //    color: Colors.yellow,
          //    child: new Text("黄色按钮"),
          //   )
          // ),
          // new RaisedButton(
          //   onPressed: (){
          //      print("点击第三个");
          //   },
          //   color: Colors.pink,
          //   child: new Text("粉色按钮"),
          // ),
          new Expanded(
            child: new RaisedButton(
                onPressed: () {
                  print("点击第四个");
                },
                color: Colors.lime,
                child: new Text("浅绿色按钮")),
          ),
        ],
      ),
    );

    return scaffold;
  }
}

class CommonTitleBar extends StatelessWidget {
    @override
      Widget build(BuildContext context) {
        Scaffold scaffold = new Scaffold(
            
            body: new Row(
              children:<Widget>[
                new Text("文字"),
                new Expanded(
                  child:new RaisedButton(
                    child: new Text("标题"),
                    color: Colors.white,
                  ),
                ),
                new Text("行为"),                
                ]                
                ),
          );
        return scaffold;
      }
    

}
