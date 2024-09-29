// import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// import 'package:flutter/rendering.dart';
// import 'package:flutter/widgets.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
    const MyApp({super.key});
    
    @override
    Widget build(BuildContext context){
      return const MaterialApp(
        debugShowCheckedModeBanner:false,
        home:QuizApp(),
      );
    }

}

class QuizApp extends StatefulWidget{
  const QuizApp({super.key});
  
  @override
  State createState() => _QuizAppState();
}

class _QuizAppState extends State{
  List<Map> quizQuestion=[
    {
      "que1":"Who is the founder of Microsoft?",
      "option":["Steve Jobs", "elon musk", "Mark", "Bill gate", "Lary"],
      "ans":3
    },
    {
      "que1":"Who is the founder of Tesla?",
      "option":["Steve Jobs", "elon musk", "Mark", "Bill gate", "Lary"],
      "ans":1
    },
    {
      "que1":"Who is the founder of Meta?",
      "option":["Steve Jobs", "elon musk", "Mark", "Bill gate", "Lary"],
      "ans":2
    },
    {
      "que1":"Who is the founder of Google?",
      "option":["Steve Jobs", "elon musk", "Mark", "Bill gate", "Lary"],
      "ans":4
    },
    {
      "que1":"Who is the founder of Apple?",
      "option":["Steve Jobs", "elon musk", "Mark", "Bill gate", "Lary"],
      "ans":0
    }
  ];
  int indexofQue=0;
  // bool op1=false;
  int op1=0;
  int op2=0;
  int op3=0;
  int op4=0;
  int op5=0;
  
   int score=0;

   int quizscreen=0;

   Scaffold quizshow(){
     if(quizscreen==0){
       return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Quiz App",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w900,
            color: Colors.orange,
          ),),
          backgroundColor: Colors.blue,
          centerTitle: true,
      ),

      body:Center(
        child: Column(children: [
        const SizedBox(
          height: 40,
        ),
        Container(
          height: 400,
          width: 300,
          child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS16106ny8lGJF7-KsbVm7fvAPZSfDMF-qH1Q&s",
           fit: BoxFit.contain,
          ),
        ),

        SizedBox(
          height: 70,
          width: 180,
          child: ElevatedButton(
                onPressed: (){
                  quizscreen=1;
                  setState(() {});
                }, 
                // child: Text("Start Quiz"),
                style: ButtonStyle(
               backgroundColor: WidgetStateProperty.resolveWith<Color>((states) {
                return Colors.deepOrange;
                 }), 
              ),
                child: const Text(
                  "Start Quiz",
                  style: TextStyle(
                    fontSize: 20
                  ),
                  ),
          
              ),
        )
        ],),
        ),
      );

      


     }else if(quizscreen==1){
        return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Quiz App",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w900,
            color: Colors.orange,
          ),),
          backgroundColor: Colors.blue,
          centerTitle: true,
      ),

      body:Center(child:
       Column(
        children: [
          const SizedBox(
              height: 30,
          ),
          Row(children: [
            const SizedBox(
              width: 110,
              height: 35,
            ),
            Text(
              "Question : ${indexofQue+1}/${quizQuestion.length}",
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w900,

              ),
              ),
          ],),
          const SizedBox(
              height: 30,
          ),
          SizedBox(
            child: Text(
              quizQuestion[indexofQue]["que1"],
              style: const TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w700
              ),
              ),
          ),
          const SizedBox(
              height: 30,
          ),
          //---------------------------
           SizedBox(
            width:350,
            child:ElevatedButton(
            onPressed: (){
              if(quizQuestion[indexofQue]["ans"]==0){
              //  op1=true;
               op1=1;
               score++;
              }else{
                op1=2;
              } 
              if(quizQuestion[indexofQue]["ans"]==1){
                op2=1;
              }else if(quizQuestion[indexofQue]["ans"]==2){
                op3=1;
              }else if(quizQuestion[indexofQue]["ans"]==3){
                op4=1;
              }else if(quizQuestion[indexofQue]["ans"]==4){
                op5=1;
              }
              setState(() {});
              
                
            }, 
             style: ButtonStyle(
             backgroundColor: WidgetStateProperty.resolveWith<Color>((states) {
              return (op1==1) ? Colors.green : (op1==2)?Colors.red:Colors.white;
       }), 
            ),
            child:Text(
              quizQuestion[indexofQue]["option"][0],
              style : const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              ),
            )
             ),
             
             ),


              const SizedBox(
              height: 30,
          ),
          //-----------------------
           SizedBox(
            width:350,
            child:ElevatedButton(
            onPressed: (){
               if(quizQuestion[indexofQue]["ans"]==1){
              //  op1=true;
               op2=1;
               score++;
              }else{
                op2=2;
              }
              if(quizQuestion[indexofQue]["ans"]==0){
                op1=1;
              }
              if(quizQuestion[indexofQue]["ans"]==2){
                op3=1;
              }if(quizQuestion[indexofQue]["ans"]==3){
                op4=1;
              }if(quizQuestion[indexofQue]["ans"]==4){
                op5=1;
              }
              setState(() {});
              
            },
            style: ButtonStyle(
             backgroundColor: WidgetStateProperty.resolveWith<Color>((states) {
              // return op1 ? Colors.green : Colors.white;
              return (op2==1) ? Colors.green : (op2==2)?Colors.red:Colors.white;

       }), 
            ),
            child:Text(
              quizQuestion[indexofQue]["option"][1],
              style : const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              ),

            ),
             ),
             ),

              const SizedBox(
              height: 30,
          ),

          //-----------------
           SizedBox(
            width:350,
            child:ElevatedButton(
            onPressed: (){
              if(quizQuestion[indexofQue]["ans"]==2){
              //  op1=true;
               op3=1;
               score++;
              }else{
                op3=2;
              }
              if(quizQuestion[indexofQue]["ans"]==1){
                op2=1;
              }if(quizQuestion[indexofQue]["ans"]==0){
                op1=1;
              }if(quizQuestion[indexofQue]["ans"]==3){
                op4=1;
              }if(quizQuestion[indexofQue]["ans"]==4){
                op5=1;
              }
              setState(() {});
            
            },
             style: ButtonStyle(
             backgroundColor: WidgetStateProperty.resolveWith<Color>((states) {
              // return op1 ? Colors.green : Colors.white;
              return (op3==1) ? Colors.green : (op3==2)?Colors.red:Colors.white;

       }), 
            ), 
            child:Text(
              quizQuestion[indexofQue]["option"][2],
              style : const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              ),

            )
             ),
             ),

              const SizedBox(
              height: 30,
          ),
          //-------------
           SizedBox(
            width:350,
            child:ElevatedButton(
            onPressed: (){
             if(quizQuestion[indexofQue]["ans"]==3){
              //  op1=true;
               op4=1;
               score++;
              }else{
                op4=2;
              }
              if(quizQuestion[indexofQue]["ans"]==1){
                op2=1;
              }if(quizQuestion[indexofQue]["ans"]==2){
                op3=1;
              }if(quizQuestion[indexofQue]["ans"]==0){
                op1=1;
              }if(quizQuestion[indexofQue]["ans"]==4){
                op5=1;
              }
              setState(() {});
              
            }, 
            style: ButtonStyle(
             backgroundColor: WidgetStateProperty.resolveWith<Color>((states) {
              // return op1 ? Colors.green : Colors.white;
              return (op4==1) ? Colors.green : (op4==2)?Colors.red:Colors.white;
       }),
            ),
            child:Text(
              quizQuestion[indexofQue]["option"][3],
              style : const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              ),

            )
             ),
             ),

          
          const SizedBox(
              height: 30,
          ),
//----------------------
            SizedBox(
            width:350,
            child:ElevatedButton(
            onPressed: (){
              if(quizQuestion[indexofQue]["ans"]==4){
              //  op1=true;
               op5=1;
               score++;
              }else{
                op5=2;
              }
              if(quizQuestion[indexofQue]["ans"]==1){
                op2=1;
              } if(quizQuestion[indexofQue]["ans"]==2){
                op3=1;
              }if(quizQuestion[indexofQue]["ans"]==3){
                op4=1;
              }if(quizQuestion[indexofQue]["ans"]==0){
                op1=1;
              }

              setState(() {});
                   
            }, 
            style: ButtonStyle(
             backgroundColor: WidgetStateProperty.resolveWith<Color>((states) {
              // return op1 ? Colors.green : Colors.white;
              return (op5==1) ? Colors.green : (op5==2)?Colors.red:Colors.white;
       }),
            ),
            child:Text(
              quizQuestion[indexofQue]["option"][4],
              style : const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              ),

            )
             ),
             ),

        ],
       ),),
       floatingActionButton: SizedBox(
        height: 70,
        width: 70,
         child: FloatingActionButton(
          onPressed:(){
            
              if(indexofQue==quizQuestion.length-1){
                print(score);
                quizscreen+=1;
              }
              
            if(indexofQue<quizQuestion.length-1){
              
              indexofQue++;
             
              op1=0;
              op2=0;
              op3=0;
              op4=0;
              op5=0;
         
            }
            // op1=false;
              op1=0;
              op2=0;
              op3=0;
              op4=0;
              op5=0;
            
            setState(() {});
         
          } ,
          // materialTapTargetSize: ,
          backgroundColor: Colors.orange,         
          child:const Icon(Icons.forward),
         
          ),
       ),
    );

     }else{
        return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Quiz Result",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w900,
            color: Colors.orange,
          ),),
          backgroundColor: Colors.blue,
          centerTitle: true,
      ),
      body:Center(
        child: Column(
          // mainAxisAlignment:MainAxisAlignment.spaceBetween,
          children: [
          const SizedBox(
            height: 40,
          ),
          Image.network(
            "https://tse2.mm.bing.net/th?id=OIP.IkqBbis21fnqOEokZC6JRQHaHa&pid=Api&P=0&h=180",
            fit: BoxFit.contain,
            width: 300,
            
          ),
          const SizedBox(
            height: 40,
          ),

          const Text(
            "..Quiz Succefully Completed..",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700
            ),
          ),

          const SizedBox(
            height: 30,
          ),
      
          Text(
            "Your Score : $score",
           style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w700,

            ),
            ),

            const SizedBox(
              height: 30,
            ),
           SizedBox(
          height: 70,
          width: 180,
          child: ElevatedButton(
                onPressed: (){
                  quizscreen=1;
                  setState(() {});
                }, 
                style: ButtonStyle(
               backgroundColor: WidgetStateProperty.resolveWith<Color>((states) {
                return Colors.deepOrange;
                 }), 
              ),
                child: const Text(
                  "ReStart Quiz",
                  style: TextStyle(
                    fontSize: 20
                  ),
                  ),
          
              ),
        )

        ],),
      )
      );


     }
   }
  @override
  Widget build(BuildContext context){
      return quizshow();
             
     }
   }







//      return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           "Quiz App",
//           style: TextStyle(
//             fontSize: 30,
//             fontWeight: FontWeight.w900,
//             color: Colors.orange,
//           ),),
//           backgroundColor: Colors.blue,
//           centerTitle: true,
//       ),

//       body:Center(child:
//        Column(
//         children: [
//           const SizedBox(
//               height: 30,
//           ),
//           Row(children: [
//             const SizedBox(
//               width: 110,
//               height: 35,
//             ),
//             Text(
//               "Question : ${indexofQue+1}/${quizQuestion.length}",
//               style: const TextStyle(
//                 fontSize: 28,
//                 fontWeight: FontWeight.w900,

//               ),
//               ),
//           ],),
//           const SizedBox(
//               height: 30,
//           ),
//           SizedBox(
//             child: Text(
//               quizQuestion[indexofQue]["que1"],
//               style: const TextStyle(
//                 fontSize: 26,
//                 fontWeight: FontWeight.w700
//               ),
//               ),
//           ),
//           const SizedBox(
//               height: 30,
//           ),
//           //---------------------------
//            SizedBox(
//             width:350,
//             child:ElevatedButton(
//             onPressed: (){
//               if(quizQuestion[indexofQue]["ans"]==0){
//               //  op1=true;
//                op1=1;
//                score++;
//               }else{
//                 op1=2;
//               } 
//               if(quizQuestion[indexofQue]["ans"]==1){
//                 op2=1;
//               }else if(quizQuestion[indexofQue]["ans"]==2){
//                 op3=1;
//               }else if(quizQuestion[indexofQue]["ans"]==3){
//                 op4=1;
//               }else if(quizQuestion[indexofQue]["ans"]==4){
//                 op5=1;
//               }
//               setState(() {});
              
                
//             }, 
//              style: ButtonStyle(
//              backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
//               return (op1==1) ? Colors.green : (op1==2)?Colors.red:Colors.white;
//        }), 
//             ),
//             child:Text(
//               quizQuestion[indexofQue]["option"][0],
//               style : const TextStyle(
//               fontSize: 24,
//               fontWeight: FontWeight.w600,
//               ),
//             )
//              ),
             
//              ),


//               const SizedBox(
//               height: 30,
//           ),
//           //-----------------------
//            SizedBox(
//             width:350,
//             child:ElevatedButton(
//             onPressed: (){
//                if(quizQuestion[indexofQue]["ans"]==1){
//               //  op1=true;
//                op2=1;
//                score++;
//               }else{
//                 op2=2;
//               }
//               if(quizQuestion[indexofQue]["ans"]==0){
//                 op1=1;
//               }
//               if(quizQuestion[indexofQue]["ans"]==2){
//                 op3=1;
//               }if(quizQuestion[indexofQue]["ans"]==3){
//                 op4=1;
//               }if(quizQuestion[indexofQue]["ans"]==4){
//                 op5=1;
//               }
//               setState(() {});
              
//             },
//             style: ButtonStyle(
//              backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
//               // return op1 ? Colors.green : Colors.white;
//               return (op2==1) ? Colors.green : (op2==2)?Colors.red:Colors.white;

//        }), 
//             ),
//             child:Text(
//               quizQuestion[indexofQue]["option"][1],
//               style : const TextStyle(
//               fontSize: 24,
//               fontWeight: FontWeight.w600,
//               ),

//             ),
//              ),
//              ),

//               const SizedBox(
//               height: 30,
//           ),

//           //-----------------
//            SizedBox(
//             width:350,
//             child:ElevatedButton(
//             onPressed: (){
//               if(quizQuestion[indexofQue]["ans"]==2){
//               //  op1=true;
//                op3=1;
//                score++;
//               }else{
//                 op3=2;
//               }
//               if(quizQuestion[indexofQue]["ans"]==1){
//                 op2=1;
//               }if(quizQuestion[indexofQue]["ans"]==0){
//                 op1=1;
//               }if(quizQuestion[indexofQue]["ans"]==3){
//                 op4=1;
//               }if(quizQuestion[indexofQue]["ans"]==4){
//                 op5=1;
//               }
//               setState(() {});
            
//             },
//              style: ButtonStyle(
//              backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
//               // return op1 ? Colors.green : Colors.white;
//               return (op3==1) ? Colors.green : (op3==2)?Colors.red:Colors.white;

//        }), 
//             ), 
//             child:Text(
//               quizQuestion[indexofQue]["option"][2],
//               style : const TextStyle(
//               fontSize: 24,
//               fontWeight: FontWeight.w600,
//               ),

//             )
//              ),
//              ),

//               const SizedBox(
//               height: 30,
//           ),
//           //-------------
//            SizedBox(
//             width:350,
//             child:ElevatedButton(
//             onPressed: (){
//              if(quizQuestion[indexofQue]["ans"]==3){
//               //  op1=true;
//                op4=1;
//                score++;
//               }else{
//                 op4=2;
//               }
//               if(quizQuestion[indexofQue]["ans"]==1){
//                 op2=1;
//               }if(quizQuestion[indexofQue]["ans"]==2){
//                 op3=1;
//               }if(quizQuestion[indexofQue]["ans"]==0){
//                 op1=1;
//               }if(quizQuestion[indexofQue]["ans"]==4){
//                 op5=1;
//               }
//               setState(() {});
              
//             }, 
//             style: ButtonStyle(
//              backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
//               // return op1 ? Colors.green : Colors.white;
//               return (op4==1) ? Colors.green : (op4==2)?Colors.red:Colors.white;
//        }),
//             ),
//             child:Text(
//               quizQuestion[indexofQue]["option"][3],
//               style : const TextStyle(
//               fontSize: 24,
//               fontWeight: FontWeight.w600,
//               ),

//             )
//              ),
//              ),

          
//           const SizedBox(
//               height: 30,
//           ),
// //----------------------
//             SizedBox(
//             width:350,
//             child:ElevatedButton(
//             onPressed: (){
//               if(quizQuestion[indexofQue]["ans"]==4){
//               //  op1=true;
//                op5=1;
//                score++;
//               }else{
//                 op5=2;
//               }
//               if(quizQuestion[indexofQue]["ans"]==1){
//                 op2=1;
//               } if(quizQuestion[indexofQue]["ans"]==2){
//                 op3=1;
//               }if(quizQuestion[indexofQue]["ans"]==3){
//                 op4=1;
//               }if(quizQuestion[indexofQue]["ans"]==0){
//                 op1=1;
//               }

//               setState(() {});
                   
//             }, 
//             style: ButtonStyle(
//              backgroundColor: WidgetStateProperty.resolveWith<Color>((states) {
//               // return op1 ? Colors.green : Colors.white;
//               return (op5==1) ? Colors.green : (op5==2)?Colors.red:Colors.white;
//        }),
//             ),
//             child:Text(
//               quizQuestion[indexofQue]["option"][4],
//               style : const TextStyle(
//               fontSize: 24,
//               fontWeight: FontWeight.w600,
//               ),

//             )
//              ),
//              ),

//         ],
//        ),),
//        floatingActionButton: FloatingActionButton(
//         onPressed:(){
          
//             if(indexofQue==quizQuestion.length-1){
//               print(score);
//             }
            
//           if(indexofQue<quizQuestion.length-1){
//             indexofQue++;
           
//             op1=0;
//             op2=0;
//             op3=0;
//             op4=0;
//             op5=0;

//           }
//           // op1=false;
//             op1=0;
//             op2=0;
//             op3=0;
//             op4=0;
//             op5=0;
          
//           setState(() {});

//         } ,
//         backgroundColor: Colors.orange,
//         child:const Text("Next"),

//         ),
//     );
   
      
  // }
// }
