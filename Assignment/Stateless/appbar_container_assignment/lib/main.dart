import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner:false,
      home: Scaffold(
     
        appBar:AppBar(

          //------Que 1
            // title: const Text("Question 1"),
            // backgroundColor: Colors.deepOrange,
            // actions:const [
            
            //   Icon(Icons.search),
            //   SizedBox(),
              
            //   Icon(Icons.person_2_rounded)
            // ],


            //Que 2
            // title: const Text("Question 1"),
            // centerTitle: true,
            // backgroundColor: Colors.deepOrange,
            // actions:const [
            
            //   Icon(Icons.search),
            //   SizedBox(
            //     width: 10,
            //   )
              
              
            // ],

            //Que 3
            //  title: const Text("Hello Core2web"),
            // centerTitle: true,
            // backgroundColor: Colors.deepPurple,
            
          //   //Que 4  
          //  title: const Text("Question 4"),
          //   centerTitle: true,
          //   backgroundColor: Colors.deepPurple,

           //Que 5  
           title: const Text("Question 5"),
            centerTitle: true,
            backgroundColor: Colors.deepPurple,
        ),

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            
            //-------Que 4
            //  Container(
            //     width: 150,
            //     height: 150,
            //     color: Color.fromARGB(255, 214, 60, 222),
          
            // ),
            // const SizedBox(
            //    height: 10,
            // ),
            // Container(
            //     width: 150,
            //     height: 150,
            //     color: Color.fromARGB(255, 224, 57, 38),
          
            // ),

            //Que 5
            SizedBox(
              height: 150,
              width: 150,
              child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKmtT2UKtqmEWml5EBVJx4zny2TjTxe9EeRA&s"),
            ),
              SizedBox(
              height: 150,
              width: 150,
              child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfhPfreowbbmDmBzY_tYCEj-77hXOzhti9Cg&s"),
            ),
              SizedBox(
              height: 150,
              width: 150,
              child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKmtT2UKtqmEWml5EBVJx4zny2TjTxe9EeRA&s"),
            )
            ],
          )
        ),
      ),
    );
  }
}
