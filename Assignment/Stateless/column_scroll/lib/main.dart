import 'package:flutter/material.dart';

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
          title: const Text("Column Scroll Scenario"),
          centerTitle: true,
          backgroundColor: Colors.cyan,
        ),
        body:SingleChildScrollView(
          child: Column(
          
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
        
            
            children: [
            Container(
              height: 200,
              width: 200,
              color: Colors.red,
            ),

          const SizedBox(
            height: 100,
            ),

            Container(
              height: 200,
              width: 200,
              color: Colors.black,
            ),
          
          const SizedBox(
            height: 100,
            ),

            Container(
              height: 200,
              width: 200,
              color: Colors.black,
            ),
          
          const SizedBox(
            height: 100,
            ),
            
            Container(
              height: 200,
              width: 200,
              color: Colors.black,
            )
          
          ],),
        )
      ),
    );
  }
}