import 'package:flutter/material.dart';
import 'package:netflix_clone/components/appbar.dart';
import 'package:netflix_clone/components/imageslider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    Container(color: Colors.black,child: Imagesliderrr(),),
    Container(color: Colors.black,child: Text("Page 2", style: TextStyle(fontSize: 24)),),
    Container(color: Colors.black,child: Text("Page 3", style: TextStyle(fontSize: 24)),),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: MyAppbar(),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home,color: Colors.white,), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.search,color: Colors.white), label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person,color: Colors.white), label: "Profile"),
        ],
      ),
      
    );
  }
}


