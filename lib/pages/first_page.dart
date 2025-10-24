import 'package:basic/pages/second_page.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("1st Page"),),
      drawer: Drawer(
        backgroundColor: Colors.amber,
        child: Column(children: [
          DrawerHeader(child:Icon(Icons.favorite,size: 48,color: Colors.blue,)),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("H O M E"),
            onTap: (){
              Navigator.pop(context);
              Navigator.pushNamed(context, '/homepage');
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("S E T T I N G S"),
            onTap: (){
              Navigator.pop(context);
              Navigator.pushNamed(context, '/settingspage');
            },
          ),
        ],),
      ),
      body: Center(child: ElevatedButton(onPressed: (){
        // Navigator.push(context, MaterialPageRoute(builder:(context)=>SecondPage(),));
        Navigator.pushNamed(context, '/secondpage');
      }, child: Text("Go To Second Page")),),
    );
  }

}