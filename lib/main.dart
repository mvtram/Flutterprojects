import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';


/* GESTURE BUTTON PRACTICE */

void main() {
  runApp(MaterialApp(
    title: 'new flutter app',
    home: TutorialHome(),
  ));
}


class MyButton extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        print('My button was tapped');
      },
      child: Container(
        height: 36.0,
        padding: EdgeInsets.all(8.0),
        margin: EdgeInsets.symmetric(horizontal: 8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.lightGreen[500],
        ),
        child: Center(
          child: Text('engage')
        ),
      )
      
    );
  }
}


class TutorialHome extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'navigation menu', 
          onPressed: null),
        title: Text('Example flutter project'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search),tooltip: 'search', onPressed: null) 
        ],
      ),

      body: MyButton(),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        tooltip: 'add',
        onPressed: null
        ),

    );
  }
}