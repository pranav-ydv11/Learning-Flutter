import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main(){
  runApp(const Counter());
}

class Counter extends StatefulWidget{
   const Counter({super.key});
  
  @override
   State createState()=> _CounterState();
}
class _CounterState extends State{
  int count=0;
  Widget build(BuildContext context){
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title: const Text("Counter App"),
          centerTitle: true,
          backgroundColor: Colors.purple,
        ),
        body:Center(
          child: Text("$count",
           style: const TextStyle(fontSize: 24.0)),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed:(){
              count++;
              setState(() {});
          },
          backgroundColor: Colors.pink,
          child: const Icon(Icons.add),
        ),

      ),
    );
  }

}