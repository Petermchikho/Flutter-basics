import 'package:basic/pages/first_page.dart';
import 'package:basic/pages/home_page.dart';
import 'package:basic/pages/profile.dart';
import 'package:basic/pages/second_page.dart';
import 'package:basic/pages/settings_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
      routes: {
        '/firstpage':(context)=> FirstPage(),
        '/homepage':(context)=> HomePage(),
        '/settingspage':(context)=> SettingsPage(),
        '/secondpage':(context)=> SecondPage(),
      },
      // home:Scaffold(
      //   backgroundColor: Colors.deepPurple[200],
      //   appBar: AppBar(
      //     title: Text("Container Widget",style: TextStyle(
      //       fontSize: 24,
      //       fontWeight: FontWeight.bold,
      //       color: Colors.white
      //     ),),
      //     centerTitle: true,
      //     backgroundColor: Colors.deepPurple,
          
      //     elevation: 0,
      //     leading: Icon(Icons.menu),
      //     actions: [
      //       IconButton(
      //         onPressed:() {}, // Action for logout button
      //         icon: Icon(Icons.logout),
             
      //        )
           
            
      //       ],
          
      //   ),

      //   body:Center(
      //     child: 
      //     GestureDetector(
      //       onTap: (){
      //         print("User tapped");
      //       },
      //       child:
      //       Container(
      //       height: 200,
      //       width: 200,
      //       color: Colors.deepPurple,
      //       child: Center(child:Text("Tap me!")),
      //     ), 
      //     )
          
      //   )
        // body: Stack(
        //   alignment: Alignment.bottomRight,
        //   children: [
        //     Container(
        //       height: 300,
        //       width: 300,
        //       color: Colors.deepPurple,),
        //     Container(
        //       height: 200,
        //       width: 200,
        //       color:Colors.deepPurple[400],
        //     ),
        //     Container(
        //       height: 100,
        //       width: 100,
        //       color:Colors.deepPurple[200],
        //     ),
        //   ],
        // ),
        // body: GridView.builder(
        //   itemCount: 64,
        //   gridDelegate: 
        //   SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 8), 
        //   itemBuilder: (context,index)=>Container(color: Colors.deepPurple,margin: EdgeInsets.all(2),)),
        // body: ListView.builder(
        //   itemCount: 10,
        //   itemBuilder: (context,index)=>ListTile(
        //     title: Text(index.toString())
        //     ),
        //   ),
        // body: ListView(
        //   scrollDirection: Axis.horizontal,
        //   children: [
        //     Expanded(
        //       flex: 2,
        //       child: Container(
        //         height: 350,
        //         width: 350,
        //         color: Colors.deepPurple,
        //     ),),
        //     Expanded(child: Container(
        //       height: 350,
        //       width: 350,
        //       color: Colors.deepPurple[400],
        //     ),),
            
        //     Expanded(child: Container(
        //       height: 350,
        //       width: 350,
        //       color: Colors.deepPurple[300],
        //     ),)
            
        //   ],
        // ),
        // body: Column(
        //   // mainAxisAlignment:MainAxisAlignment.center,
        //   crossAxisAlignment: CrossAxisAlignment.center,
        //   children: [
        //     Expanded(
        //       flex: 2,
        //       child: Container(
             
        //       color: Colors.deepPurple,
        //     ),),
        //     Expanded(child: Container(
              
        //       color: Colors.deepPurple[400],
        //     ),),
            
        //     Expanded(child: Container(
        //       height: 200,
              
        //       color: Colors.deepPurple[300],
        //     ),)
            
        //   ],
        // ),
        // body: Center(
        //   child:Container(
        //   height: 300,
        //   width: 300,
        //   decoration: BoxDecoration(
        //     borderRadius: BorderRadius.circular(20),
        //     color: Colors.deepPurple,
        //     border: Border.all(
        //       color: Colors.black,
        //       width: 5,
        //     ),
        //     boxShadow: [
        //       BoxShadow(
        //         color: Colors.black.withOpacity(0.5),
        //         spreadRadius: 5,
        //         blurRadius: 7,
        //         offset: Offset(0, 3), // changes position of shadow
        //       ),
        //     ],
        //   ),
        //   padding: EdgeInsets.all(25),
        //   // child:Text("Peter Mchikho",
        //   //   style: TextStyle(
        //   //     fontSize: 24,
        //   //     color: Colors.white,
        //   //     fontWeight: FontWeight.bold,
        //   //   ),
        //   // ),
        //   child:Icon(Icons.favorite,color: Colors.white,size: 64),
          
        //   )
        
        // ),
      // )
    );
  } 
}


// class MyApp extends StatelessWidget {
//   MyApp({super.key});

//   // Variables
//   String title = "My Flutter App";
//   int age = 25; 
//   double height = 5.9;
//   bool isStudent = true;

//   /* BASIC MATH OPERATORS 
  
//   +
//   -
//   *
//   /

//   COMPARISON OPERATORS
//   ==
//   !=
//   >
//   <
//   >=
//   <=

//   LOGICAL OPERATORS
//   &&
//   ||
//   !
   
//   CONTROL FLOW STATEMENTS
//   if(){
//     // code
//   } else if(){
//     // code
  
//   else {
//     // code
//   }

//   for(int i=0; i<5; i++){
//     // code
//   }
//   while(condition){
//     // code
//   }

//   functions

//   void myFunction(){
//     // code
//   }

//   DATA STRUCTURES

//   List
  
//   */
//   List<int> numbers=[1,2,3,4,5];
//   void greetUser(String name) {
//     print("Hello, $name!");
//   }
//   void printNumbers(){
//     for(int i=0;i<numbers.length;i++){
//       print(i);
//     }
//   }
//   // SET

//   Set<String> fruits = {'apple', 'banana', 'orange'};

//   // MAP
//   Map<String, int> scores = {
//     'Alice': 90,
//     'Bob': 85,
//     'Charlie': 92,
//   };


//   int addNumbers(int a, int b) {
//     return a + b;
//   }
  

//   @override
//   Widget build(BuildContext context) {
//     print("Title: $title");
//     print("Age: $age");
//     for (int i = 0; i < 3; i++) {
//       print("Iteration: $i");
//     }
//     greetUser("Alice");
//     print(addNumbers(3, 4));
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home:Scaffold()
      
//     );
//   }
// }

