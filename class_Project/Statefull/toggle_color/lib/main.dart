import "package:flutter/material.dart";

void main(){
  runApp(const ToggleApp());

}
class ToggleApp extends StatefulWidget{
  const ToggleApp({super.key});
 
  @override
  State createState()=> _ToggleAppState();
}

class _ToggleAppState extends State{
  bool changeColor=true;
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Toggle Container Color"),
          centerTitle: true,
          backgroundColor:changeColor? Colors. blue:Colors.redAccent
          
          ,
        ),
         body:Center(
          child: Container(
            height: 100,
            width: 100,
            color: changeColor? Colors.red : Colors.black,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed:(){
            if(changeColor){
              changeColor=false;
            }else{
              changeColor=true;
            }
            setState(() {});
          },
          backgroundColor: Colors.deepPurple,
          child: const Text("Toggle"),
          ),
        ),
       
    );
  }
}