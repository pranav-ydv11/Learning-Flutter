import "package:flutter/material.dart";
import "package:flutter/widgets.dart";

void main(){
  runApp(const Myclass());
}

class Myclass extends StatelessWidget{
   const Myclass({super.key});
  
  @override
  Widget build(BuildContext context){
    return MaterialApp(
          home: Scaffold(
            appBar:AppBar(
              title: const Text("Column Scenario"),
              centerTitle:true,
              backgroundColor: Colors.purple,
            ),
            body: Container(

              width: MediaQuery.of(context).size.width, 
              height: MediaQuery.of(context).size.height,

              child: Column(
                //1st
                // mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment:CrossAxisAlignment.start,

                //2nd
                // mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment:CrossAxisAlignment.center,

                //3rd
                // mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment:CrossAxisAlignment.end,

                // 4th
                // mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment:CrossAxisAlignment.start,

                // 5th
                // mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment:CrossAxisAlignment.center,
                
                // 6th
                // mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment:CrossAxisAlignment.end,
                
                // 7th
                // mainAxisAlignment: MainAxisAlignment.end,
                // crossAxisAlignment:CrossAxisAlignment.start,

                //8th
                // mainAxisAlignment: MainAxisAlignment.end,
                // crossAxisAlignment:CrossAxisAlignment.center,

                //9th
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment:CrossAxisAlignment.end,
                 


                children: [
                  Container(
                    height: 200,
                    width: 200,
                    color: Colors.red,
                    ),
                ],
              ),
            ),
            
            ),
    );

  } 
}
