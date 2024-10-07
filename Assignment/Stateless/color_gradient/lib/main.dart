// import 'dart:ffi';

import 'package:flutter/material.dart';
// import 'package:flutter/painting.dart';
// import 'package:flutter/rendering.dart';
// import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            height: 300,
            width: 300,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                  
                  colors:[
                    Colors.orange,
                    Colors.white,
                    Colors.green
                    ],

                    begin:Alignment.topCenter,
                    end: Alignment.bottomCenter


                )
            ),
          ),
          
        ),
      ),
    );
  }
}
