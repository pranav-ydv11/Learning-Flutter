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
      theme: ThemeData.dark(),
      
      home: text_field(),
    );
  }
}
class text_field extends StatefulWidget{
  const text_field({super.key});
  
  @override
  State createState() => _text_field();
}
class _text_field extends State{

   final List<String> player = [
    'Virat Kohli',
    'Rohit Sharma',
    'Babar Azam',
    'Kane Williamson',
    'Steve Smith',
    'Ben Stokes',
    'Jasprit Bumrah',
    'Joe Root',
    'David Warner',
    'Pat Cummins',
  ];

  final List<String> imageUrls = [
    'https://cdn.britannica.com/48/252748-050-C514EFDB/Virat-Kohli-India-celebrates-50th-century-Cricket-November-15-2023.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/8/81/Rohit_Sharma_2.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/3/3a/Babar_Azam_2018.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/4/48/Kane_Williamson_2020.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/f/f4/2018._Steve_Smith_%2841146793965%29.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/e/e7/Ben_Stokes_%28cropped%29.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/e/e5/Jasprit_Bumrah_March_2020_%28cropped%29.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/e/eb/Joe_Root.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/e/e4/David_Warner_2.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/2/20/2018._Pat_Cummins_%2840144510195%29.jpg',
  ];

  // TextEditingController nameController=TextEditingController();
    TextEditingController nameController = TextEditingController();
    String? myname;

@override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Text Field and Player List"),
        centerTitle:true,
        backgroundColor: Colors.pinkAccent,
      ),
      body: 

      //------------TextField
      // Center(
      //   child: Column(
      //     children: [

      //       const SizedBox(
      //         height: 20,
      //       ),

      //       TextField(
      //         textAlign: TextAlign.end,
      //         textAlignVertical: TextAlignVertical.top,
      //         textDirection: TextDirection.rtl,
      //         controller:nameController,
      //         style:const TextStyle(
      //           fontSize: 30,
      //           fontWeight: FontWeight.w600
      //         ),
      //         onSubmitted: (value){ 
      //           myname=nameController.text;

      //           setState(() {});              
      //           },

      //       ),
      //       const SizedBox(
      //         height: 20,
      //       ),

      //       Text("Your Name: $myname")
      //     ],
      //   ),
      //   ),

      //---------List view Builder Player List
      // ListView.builder(
      //   itemCount: 10,
      //   itemBuilder: (BuildContext context,int index ){
      //       // return  Text("Indexing = $index");
      //       return ListTile(
      //           leading: 
      //           // const Icon(Icons.sports_soccer_outlined),
      //           CircleAvatar(
      //       backgroundImage: NetworkImage(imageUrls[index],),
      //     ),
                
      //           title: Text(player[index]),
      //       );
      //   }

      //   ),


      //Aspect Ratio
      Center(child: Container(
        
        // //1:1
        // height: 300,
        // width: 300,
        // color: Colors.white,
        // child: Image.network("https://24ai.tech/en/wp-content/uploads/sites/3/2023/10/01_product_1_sdelat-izobrazhenie-1-1-5-scaled.jpg"),

      
        
        height: 400,
        width: 300,
        color: Colors.white,
        child: Image.network("https://media.istockphoto.com/id/517188688/photo/mountain-landscape.jpg?s=612x612&w=0&k=20&c=A63koPKaCyIwQWOTFBRWXj_PwCrR4cEoOw2S9Q7yVl8="),
      ),)
    );
  }
}
