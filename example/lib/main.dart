import 'package:floating_navigation_bar/floating_navigation_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Floating Navigation Bar',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DemoScreen(),
    );
  }
}

class DemoScreen extends StatefulWidget {
  @override
  _DemoScreenState createState() => _DemoScreenState();
}

class _DemoScreenState extends State<DemoScreen> {
  int currentIndex = 0;

  var pageList = <Widget>[
    Center(
      child: Text("Home Page"),
    ),
    Center(
      child: Text("Feed Page"),
    ),
    Center(
      child: Text("Cart Page"),
    ),
    Center(
      child: Text("Profile Page"),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[140],
      appBar: AppBar(
        elevation: 0.0,
        toolbarHeight: 70.0,
        backgroundColor: Colors.grey[200],
        title: Text(
          "Floating Navigation Bar",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: pageList[currentIndex],
      bottomNavigationBar: FloatingNavigationBar(
        backgroundColor: Colors.red,
        textStyle: TextStyle(
          color: Colors.black,
          fontSize: 14.0,
        ),
        iconSize: 18.0,
        navBarItems: [
          NavBarItems(
            icon: Icons.home,
            title: "Home",
          ),
          NavBarItems(
            icon: Icons.category,
            title: "Feed",
          ),
          NavBarItems(
            icon: Icons.shopping_cart,
            title: "Cart",
          ),
          NavBarItems(
            icon: Icons.person,
            title: "Profile",
          ),
        ],
        onChanged: (value) {
          currentIndex = value;
          setState(() {});
        },
      ),
    );
  }
}
