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
    return  MaterialApp(
      debugShowCheckedModeBanner:false,
      home: Scaffold(
        appBar: AppBar(

          leading: const Icon(Icons.menu,
          color: Colors.red,
          size: 35,
          ),
          
          actions: [
            
            Padding(
              padding: const EdgeInsets.only(right: 120),
              child: Image.network(
                 "https://variety.com/wp-content/uploads/2020/05/netflix-logo.png"
              
                ),
              
              ),
              const Icon(Icons.account_circle_rounded,
              size: 35,
              color: Colors.white,
              ),
          ],                  
            backgroundColor: Colors.black,
        ),
       body: ListView(
        children: [
          Container(
            height: 30,
            width: MediaQuery.of(context).size.width,
            color:Colors.black,
            child:  const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                
                 Text(
                  "Trending",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500
                  ),
                ),
                 Text("Movies",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500
                  ),),
                 Text("Original",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500
                  ),),
                 Text("Kids",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500
                  ),),

            ],),           
          ),
          Container(
            height: 400, 
            width: MediaQuery.of(context).size.width,
            color: Colors.black,
            
          child: Padding(
              padding:const EdgeInsets.all(30),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   const SizedBox(
                    width: 20,
                   ),

                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),                
                  child:  Image.network("https://img.buzzfeed.com/buzzfeed-static/static/2023-07/18/21/asset/71268e2b66ba/sub-buzz-645-1689715488-7.jpg"
                  ),),

                const SizedBox(
                  width: 40,
                ),

                 ClipRRect(
                    borderRadius: BorderRadius.circular(20),                
                  child:  Image.network("https://cdn.prod.website-files.com/6009ec8cda7f305645c9d91b/66a4263d01a185d5ea22eeec_6408f6e7b5811271dc883aa8_batman-min.png"
                  ),),

                   const SizedBox(
                  width: 40,
                ),

                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),                
                  child:  Image.network("https://images-cdn.ubuy.co.in/668f03f763dc6918441092c0-avengers-infinity-war-movie-poster.jpg"
                  ),),

                   const SizedBox(
                  width: 40,
                ),

                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),                
                  child:  Image.network("https://m.media-amazon.com/images/I/91zTlD7AY1L._AC_UF1000,1000_QL80_.jpg"
                  ),),
                
                ],),
              ),
              ),

          ),
          Container( 
            width: MediaQuery.of(context).size.width,
            color: Colors.black,
            padding: EdgeInsets.only(left: 40),
            child: const Text("Action Movies",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight:FontWeight.w600,
            ),
            ),
            ),
            

          Container(
            height: 250, 
            width: MediaQuery.of(context).size.width,
            color: Colors.black,
            
          child: Padding(
              padding:const EdgeInsets.all(30),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   const SizedBox(
                    width: 20,
                   ),

                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),                
                  child:  Image.network("https://m.media-amazon.com/images/I/91zTlD7AY1L._AC_UF1000,1000_QL80_.jpg"
                  ),),

                const SizedBox(
                  width: 40,
                ),

                 ClipRRect(
                    borderRadius: BorderRadius.circular(20),                
                  child:  Image.network("https://cdn.prod.website-files.com/6009ec8cda7f305645c9d91b/66a4263d01a185d5ea22eeec_6408f6e7b5811271dc883aa8_batman-min.png"
                  ),),

                   const SizedBox(
                  width: 40,
                ),

                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),                
                  child:  Image.network("https://images-cdn.ubuy.co.in/668f03f763dc6918441092c0-avengers-infinity-war-movie-poster.jpg"
                  ),),

                   const SizedBox(
                  width: 40,
                ),

                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),                
                  child:  Image.network("https://m.media-amazon.com/images/I/91zTlD7AY1L._AC_UF1000,1000_QL80_.jpg"
                  ),),
                
                ],),
              ),
              ),

          ),

          //comedy
          Container( 
            width: MediaQuery.of(context).size.width,
            color: Colors.black,
            padding:const EdgeInsets.only(left: 40, top: 10),
            child: const Text("Comedy Movies",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight:FontWeight.w600,
            ),
            ),
            ),
            

          Container(
            height: 250, 
            width: MediaQuery.of(context).size.width,
            color: Colors.black,
            
          child: Padding(
              padding:const EdgeInsets.all(30),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   const SizedBox(
                    width: 20,
                   ),

                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),                
                  child:  Image.network("https://i.pinimg.com/736x/5b/c7/33/5bc7337a767d2597e02c5d8b07632a5a.jpg"
                  ),),

                const SizedBox(
                  width: 40,
                ),

                 ClipRRect(
                    borderRadius: BorderRadius.circular(20),                
                  child:  Image.network("https://i.pinimg.com/474x/d5/10/f2/d510f2e6f6a0862043e17b6a7fc8d5da.jpg"
                  ),),

                   const SizedBox(
                  width: 40,
                ),

                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),                
                  child:  Image.network("https://images.squarespace-cdn.com/content/v1/5f73dd32e3f00e384ee53676/1610746402979-7603C9ULL22Q13E5VMXC/Chaplin+Rink.jpg"
                  ),),

                   const SizedBox(
                  width: 40,
                ),

                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),                
                  child:  Image.network("https://mir-s3-cdn-cf.behance.net/project_modules/hd/5fc35e88131915.5dccf96d1af75.jpg"
                  ),),
                
                ],),
              ),
              ),

          ),
           
        // romantic
        Container( 
            width: MediaQuery.of(context).size.width,
            color: Colors.black,
            padding:const EdgeInsets.only(left: 40, top: 10),
            child: const Text("Romantic Movies",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight:FontWeight.w600,
            ),
            ),
            ),
            

          Container(
            height: 250, 
            width: MediaQuery.of(context).size.width,
            color: Colors.black,
            
          child: Padding(
              padding:const EdgeInsets.all(30),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   const SizedBox(
                    width: 20,
                   ),

                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),                
                  child:  Image.network("https://i.pinimg.com/736x/5b/c7/33/5bc7337a767d2597e02c5d8b07632a5a.jpg"
                  ),),

                const SizedBox(
                  width: 40,
                ),

                 ClipRRect(
                    borderRadius: BorderRadius.circular(20),                
                  child:  Image.network("https://i.pinimg.com/474x/d5/10/f2/d510f2e6f6a0862043e17b6a7fc8d5da.jpg"
                  ),),

                   const SizedBox(
                  width: 40,
                ),

                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),                
                  child:  Image.network("https://images.squarespace-cdn.com/content/v1/5f73dd32e3f00e384ee53676/1610746402979-7603C9ULL22Q13E5VMXC/Chaplin+Rink.jpg"
                  ),),

                   const SizedBox(
                  width: 40,
                ),

                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),                
                  child:  Image.network("https://mir-s3-cdn-cf.behance.net/project_modules/hd/5fc35e88131915.5dccf96d1af75.jpg"
                  ),),
                
                ],),
              ),
              ),

          ),
           

        ],
       ),
      ),
    );
  }
}
