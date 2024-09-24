import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Indian Flag"),
          centerTitle: true,
          backgroundColor: Colors.orange,
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children:[
                Container(
                height:500,
                width: 10,
                color: Colors.black,
                )
            ],),
            Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 35,
                width: 250,
                color: Colors.orange
              ),
              Container(
                height: 35,
                width: 250,
                color: Colors.white,
               child: Image.network("https://static.vecteezy.com/system/resources/previews/019/136/455/original/ashok-chakra-logo-ashok-chakra-free-free-vector.jpg")
              ),
              Container(
                height: 35,
                width: 250,
                color: Colors.green
              )

          ],),
  
          ],),
        ),
      ),
    );
  }
}
