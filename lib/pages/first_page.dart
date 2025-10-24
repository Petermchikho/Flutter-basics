import 'package:basic/pages/counter_page.dart';
import 'package:basic/pages/home_page.dart';
import 'package:basic/pages/profile.dart';
import 'package:basic/pages/second_page.dart';
import 'package:basic/pages/settings_page.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int _selectedIndex=0;

  void _navigateBottomBar(int index){
    setState(() {
      _selectedIndex=index;
    });

  }

  final List _pages=[
    // CounterPage(),
    HomePage(),
    ProfilePage(),
    SettingsPage(),
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("1st Page"),),
      body:_pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        items: [
        // BottomNavigationBarItem(icon: Icon(Icons.code),
        // label: 'Counter',
        // ),
        BottomNavigationBarItem(icon: Icon(Icons.home),
        label: 'Home',
        ),
        BottomNavigationBarItem(icon: Icon(Icons.person),
        label: 'Profile',
        ),
        
        BottomNavigationBarItem(icon: Icon(Icons.settings),
        label: 'Settings',
        ),
      ]),
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
      // body: Center(child: ElevatedButton(onPressed: (){
      //   // Navigator.push(context, MaterialPageRoute(builder:(context)=>SecondPage(),));
      //   Navigator.pushNamed(context, '/secondpage');
      // }, child: Text("Go To Second Page")),),
    );
  }
}