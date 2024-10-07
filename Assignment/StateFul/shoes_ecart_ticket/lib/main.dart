import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner:false,
      home: shoecart(),
    );
  }
}

class shoecart extends StatefulWidget{
  
  @override
  const shoecart({super.key});

  State createState()=>_shoecart();
}

class _shoecart extends State{

  int counter=0;
  
  @override
  Widget build(BuildContext context){
    
    return Scaffold(
        appBar:AppBar(
          title: 
          const Text("Shoes",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w700,
            color: Color.fromARGB(255, 109, 44, 248),
          ),
          ),
          actions: [
            IconButton(
              onPressed: (){},
               icon: const Icon(Icons.shopping_cart_rounded,
               color: Color.fromARGB(255, 109, 44, 248),
               size: 35,
               ),
               
               )
          ],
                    
        ), 
        body:  Column
        (children: [

           const SizedBox(
              height: 10,
            ),

          Container(
            height: 400,
            
            child: Image.network("https://app.vectary.com/website_assets/636cc9840038712edca597df/636cc9840038713d9aa59ac2_UV_hero.jpg",
            fit: BoxFit.cover,
            )
            ),
            const SizedBox(
              height: 30,
            ),
           const Row(children: [
            SizedBox(
              width: 20,
            ),
               Text("Nike Air Force 1 '07",
               style: TextStyle(
                 fontSize: 25,
                 fontWeight: FontWeight.w600 
               ),
               ),
            ],),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 15,
                ),
                ElevatedButton(
                  onPressed: (){}, 
                  child: const Text("SHOES",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white
                  ),),
                  style: ButtonStyle(
                    backgroundColor:  WidgetStateProperty.resolveWith<Color>((states) {
                    return const Color.fromARGB(255, 109, 44, 248);
              
       }),
                  ),
                  ),

                  const SizedBox(
                  width: 20,
                ),

                  ElevatedButton(
                  onPressed: (){}, 
                  child: const Text("FOOTWEAR",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white

                  ),),
                  style: ButtonStyle(
                     backgroundColor:  WidgetStateProperty.resolveWith<Color>((states) {
                    return const Color.fromARGB(255, 109, 44, 248);
              
       }),
                  ),
                   )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Text("To build a comprehensive pet profile,\n the system integrates factors such as \npet type, age, weight, health conditions,\n and activity level.",
                style: TextStyle(
                  fontSize: 20
                ),
                ),
              ],
            ),
           
           const SizedBox(
            height: 10,
           ),
           Row(
            children: [
             const SizedBox(
                width: 20,
              ),
             const Text("Quality",
              style: TextStyle(
                fontSize:20,
                fontWeight: FontWeight.w600

              ), 
               ),
              const SizedBox(
                width: 10,
              ),
              
              GestureDetector(
                child: const Icon(Icons.remove),
                onTap: (){
                  if(counter>0){
                  counter--;
                  setState(() {
                    
                  });
                  }
                },
                ),

             const SizedBox(
                width: 10,
              ),
              
              Container(
                height:30,
                width: 30,
                padding: const EdgeInsets.only(left: 7),

                decoration: BoxDecoration(
                  borderRadius:BorderRadius.circular(8) ,  
                border: Border.all(
                  color: Color.fromARGB(255, 152, 165, 176),
                   width: 2.0),
                 // Rectangle shape
               ),
                child: Text("$counter",
                style:const TextStyle(
                  fontSize:20,
                  fontWeight: FontWeight.w600
                
                ), 
                 ),
                
              ),
              
              const SizedBox(
                width: 10,
              ),

             GestureDetector(
              child: const Icon(Icons.add),
              onTap: (){
                 counter++;
                 setState(() {
                   
                 });
              },
              ),
              
            ],
           ),
          const SizedBox(
            height: 15,
           ),

            Row(children: [
             const SizedBox(
                width: 30,
              ),
              SizedBox(
                width: 350,
                height: 50,
                child: ElevatedButton(
                  onPressed:(){}, 
                  child: const Text("PURCHASE",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white
                
                  ),),
                  style: ButtonStyle(
                     backgroundColor:  WidgetStateProperty.resolveWith<Color>((states) {
                    return const Color.fromARGB(255, 109, 44, 248);
                              
                       }),
                  ),
                   ),
              )
              // ElevatedButton(
              // onPressed: (){},
              //  child: const Text("PURCHASE"))
              
              
           ],            
           )
          

            
        ],
        ),
        );
  }
}
