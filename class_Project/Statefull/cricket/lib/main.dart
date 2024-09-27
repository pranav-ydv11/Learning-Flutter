import 'package:flutter/material.dart';

void main() {
  runApp(const CricPlayer());
}

class CricPlayer extends StatefulWidget {
  const CricPlayer({super.key});

  @override
  State<CricPlayer> createState() => _CricPlayerState();
}

class _CricPlayerState extends State<CricPlayer> {
  List imgColl=[
    "https://i1.wp.com/cdn.britannica.com/25/222725-050-170F622A/Indian-cricketer-Mahendra-Singh-Dhoni-2011.jpg?strip=all",
    "https://admin.thecricketer.com/weblab/Sites/96c8b790-b593-bfda-0ba4-ecd3a9fdefc2/resources/images/site/kohliheadshot-min.jpg",
    "https://admin.thecricketer.com/weblab/Sites/96c8b790-b593-bfda-0ba4-ecd3a9fdefc2/resources/images/site/sharmaheadshot-min.jpg",
    "https://www.crictotal.com/player-images/1.jpg"
  ];
  int i=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Cricket Player"),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
        ),
        body: Center(
          child: SizedBox(
            height: 300,
            width: 300,
            child: Image.network(imgColl[i]),
          ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: (){
              if(i < imgColl.length-1){
                i++;
              }else{
                i=0;
              }
              setState(() {});
            },
            backgroundColor: const Color.fromARGB(255, 164, 20, 20),
            child: const Text("Next"),
            ),
        ),
      
    );
  }
}
