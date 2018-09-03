import 'package:flutter/material.dart';
import 'page/home.dart';
import 'page/message.dart';
import 'page/mine.dart';


void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
    @override
      Widget build(BuildContext context) {
         
        return new MaterialApp(
          title : 'title',
          home : Home(),
        );
      }
}

class Home extends StatefulWidget{
    
 @override
 State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
    int _currentIndex = 0;
  final List<Widget> _children = [
   new HomePage(),
   new MessagePage(),
   new MinePage(),
  ];


 @override
 Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text('My Flutter App'),
     ),
      body: _children[_currentIndex], // new
     bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped, // new
       currentIndex: _currentIndex, // this will be set when a new tab is tapped
       items: [
         BottomNavigationBarItem(
           icon: new Icon(Icons.home),
           title: new Text('Home'),
         ),
         BottomNavigationBarItem(
           icon: new Icon(Icons.mail),
           title: new Text('Messages'),
         ),
         BottomNavigationBarItem(
           icon: Icon(Icons.person),
           title: Text('Profile')
         )
       ],
     ),
   );
 }
 void onTabTapped(int index) {
   setState(() {
     _currentIndex = index;
   });
 }
}



