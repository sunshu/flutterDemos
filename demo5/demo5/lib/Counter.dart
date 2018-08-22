import 'package:flutter/material.dart';

class Counter extends StatefulWidget{

  @override
    State<StatefulWidget> createState() {
      
      return new _CounterState();
    }
}

class _CounterState extends State<Counter>{
   int _count = 0;

   void _increment(){
     setState(() {
          _count ++;
          });
   }

    @override
      Widget build(BuildContext context) {
        Scaffold scaffold = new Scaffold(
          appBar: new AppBar(
            title: new Text("Flutter 实例"),            
          ),
         body:  new CounterDisplay(count:_count),
         floatingActionButton : new CountIncrementor(onPressed: _increment)
         );
         return scaffold;
      }  
}

class CounterDisplay extends StatelessWidget{
  final int count;
  CounterDisplay({this.count}) ;
  @override
    Widget build(BuildContext context) {
      
      return new Center(
        child:new Text('按钮点击 $count 次'),
      );
    }
}

class CountIncrementor extends StatelessWidget{
  final VoidCallback onPressed;
  CountIncrementor({this.onPressed});
  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return new FloatingActionButton(
        onPressed : onPressed,
        tooltip: '增加',
        child:new Icon(Icons.add)
      );
    }
}