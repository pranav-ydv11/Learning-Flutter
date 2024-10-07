import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main(){
  runApp(const Myclass());
}

class Myclass extends StatelessWidget{
  const Myclass({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Space Scenario"),
          centerTitle: true,
          backgroundColor: Colors.cyan,
        ),
        body:Column(

          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          
          children: [
          Container(
            height: 200,
            width: 200,
            color: Colors.black,
          ),

          
          Container(
            height: 200,
            width: 200,
            color: Colors.black,
          )

        ],)
      ),
    );
  }
}