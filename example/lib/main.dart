import 'package:eva_icons_flutter/eva_icons_flutter.dart';
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
        backgroundColor: Colors.black87,
        barHeight: 80.0,
        barWidth: MediaQuery.of(context).size.width - 40.0,
        iconColor: Colors.white,
        textStyle: TextStyle(
          color: Colors.white,
          fontSize: 14.0,
        ),
        iconSize: 20.0,
        indicatorColor: Colors.white,
        indicatorHeight: 5,
        indicatorWidth: 14.0,
        items: [
          NavBarItems(
            icon: EvaIcons.homeOutline,
            title: "Home",
          ),
          NavBarItems(
            icon: EvaIcons.search,
            title: "Search",
          ),
          NavBarItems(
            icon: EvaIcons.shoppingCartOutline,
            title: "Cart",
          ),
          NavBarItems(
            icon: EvaIcons.activity,
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
