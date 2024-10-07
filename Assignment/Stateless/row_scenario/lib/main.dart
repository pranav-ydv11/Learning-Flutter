
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
          title: const Text("Row Scenario"),
          centerTitle:true,
          backgroundColor: Colors.redAccent,
        ),
        body:Container(
          width:MediaQuery.of(context).size.width,
          height:MediaQuery.of(context).size.height,

          child: Row(
            //1st
            // mainAxisAlignment:MainAxisAlignment.start,
            // crossAxisAlignment:CrossAxisAlignment.start,
            
            // 2nd
            // crossAxisAlignment:CrossAxisAlignment.start,
            // mainAxisAlignment:MainAxisAlignment.center,
            
            // 3rd
            // crossAxisAlignment:CrossAxisAlignment.start,
            // mainAxisAlignment:MainAxisAlignment.end,

            //4th
            // crossAxisAlignment:CrossAxisAlignment.center,
            // mainAxisAlignment:MainAxisAlignment.start,
            
            // 5th
            // crossAxisAlignment:CrossAxisAlignment.center,
            // mainAxisAlignment:MainAxisAlignment.center,

            // 6th
            // crossAxisAlignment:CrossAxisAlignment.center,
            // mainAxisAlignment:MainAxisAlignment.end,

            //7th
            // crossAxisAlignment:CrossAxisAlignment.end,
            // mainAxisAlignment:MainAxisAlignment.start,

            //8th
            // crossAxisAlignment:CrossAxisAlignment.end,
            // mainAxisAlignment:MainAxisAlignment.center,

            // 9th
            crossAxisAlignment:CrossAxisAlignment.end,
            mainAxisAlignment:MainAxisAlignment.end,

            children: [
            Container(
              height: 200,
              width:200,
              color: Colors.orange,

            ),
          ],)
        )
      ),
    );
  }
}