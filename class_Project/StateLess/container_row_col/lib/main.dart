import "package:flutter/material.dart";

void main(){
  runApp(const Myapp());
}

class Myapp extends StatelessWidget{
  const Myapp({super.key});

  Widget build(BuildContext context){
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title: const Text("Container App"),
          backgroundColor: Colors.amber,
          centerTitle: true
        ),
        body:Center(
          child:Row(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Container(
            height: 100,
            width: 100,
            color: Colors.amber
          ),
           Container(
            height: 100,
            width: 100,
            color: Colors.red
          ),
           Container(
            height: 100,
            width: 100,
            color: Colors.green
          )

            ],
          ),
        
          // child:Column(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //   Container(
          //   height: 100,
          //   width: 100,
          //   color: Colors.amber
          // ),
          //  Container(
          //   height: 100,
          //   width: 100,
          //   color: Colors.red
          // ),
          //  Container(
          //   height: 100,
          //   width: 100,
          //   color: Colors.green
          // )

          //   ],
          // ),
          
        ),
        
        
      ),
    );
  }
}