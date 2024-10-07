import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

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
          title: const Text("Static List View"),
          centerTitle: true,
          backgroundColor: Colors.cyan,
        ),
        body:ListView(
          children: [
            const SizedBox(
                      height: 20,
                ),
                
                Container(
                  height: 200,
                  width: 300,
                  color: const Color.fromARGB(255, 213, 95, 232),                  
                ),

                const SizedBox(
                      height: 20,
                ),

                 Container(
                  height: 200,
                  width: 300,
                  color:const Color.fromARGB(255, 228, 191, 237),                  
                ),
                 const SizedBox(
                      height: 20,
                ),

                 Container(
                  height: 200,
                  width: 300,
                  color:const Color.fromARGB(255, 228, 191, 237),                  
                ),
                 const SizedBox(
                      height: 20,
                ),

                 Container(
                  height: 200,
                  width: 300,
                  color:const Color.fromARGB(255, 228, 191, 237),                  
                ),
                 const SizedBox(
                      height: 20,
                ),

                 Container(
                  height: 200,
                  width: 300,
                  color:const Color.fromARGB(255, 228, 191, 237),                  
                ),
                 const SizedBox(
                      height: 20,
                ),

                 Container(
                  height: 200,
                  width: 300,
                  color:const Color.fromARGB(255, 228, 191, 237),                  
                ),
          ],

        )
      ),
    );
  }
}
