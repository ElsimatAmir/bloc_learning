import 'package:bloc_learning/screens/messageScreen.dart';
import 'package:bloc_learning/screens/productsScreen.dart';
import 'package:bloc_learning/screens/profileScreen.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _screenIndex = 0;
  
  // addingthe screens in the list to change by click on nav Bar
  List screens = [
    // value of the products screen  = 0
    ProductsScreen(),
    
    //value of the messages screen = 1
    const MessageScreen(),

    // value of a profilescreen = 2
    const ProfaileScreen(),
  ]; 

  //iems List for the navigationBar
  List<Widget> itemsForNavBar = [
    const Icon(Icons.feed_rounded, size: 27,color: Colors.white,),
    const Icon(Icons.message, size: 27,color: Colors.white,),
    const Icon(Icons.person, size: 27,color: Colors.white,),
  ];

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_screenIndex],

    bottomNavigationBar: CurvedNavigationBar(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      buttonBackgroundColor: const Color.fromARGB(255, 250, 120, 71),
      height: 50.0,
      color: const Color.fromARGB(255, 38, 38, 38),
      // here item its a list of items above for nav bar
      items: itemsForNavBar,
      onTap:((value) {
        setState(() {
          _screenIndex = value;
        });
      }
      ),
    ),

    );
  }
}
