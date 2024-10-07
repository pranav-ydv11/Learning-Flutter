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
          title: const Text("Row Scroll Scenario"),
          centerTitle: true,
          backgroundColor: Colors.cyan,
        ),
        body:SingleChildScrollView(
          scrollDirection:Axis.horizontal,
          child: Row(
          
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
        
            
            children: [
 Container(
              height: 200,
              width: 200,
              // color: Colors.black,
              decoration: const BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle
              ),
            ),

          const SizedBox(
            width: 100,
            ),

            Container(
              height: 200,
              width: 200,
              // color: Colors.black,
              decoration: const BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle
              ),
            ),
          
          const SizedBox(
            width: 100,
            ),

            Container(
              height: 200,
              width: 200,
              color: Colors.black,
            ),
          
          const SizedBox(
            width: 100,
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