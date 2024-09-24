import 'package:flutter/material.dart';

void main(){
  runApp(const Myapp());
}

class Myapp extends StatelessWidget{
  const Myapp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title: const Text("First App"),
          backgroundColor: Colors.blue,
          centerTitle: true
        ),
        body: Center(
          child: Container(
            height: 100,
            width: 100,
            color: Colors.red,
             
        ),
        ),
      ),
    );
  }
}

