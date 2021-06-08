import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:floating_navigation_bar/floating_navigation_bar.dart';
import 'package:flutter/material.dart';

class SideDrawer extends StatelessWidget {
  static int currentIndex = 0;

  static var pageList = <Widget>[
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
    return Drawer(
      elevation: 0.0,
      child: Container(
        color: Colors.black87,
        child: Column(
          children: [
            FloatingNavigationBar(
              backgroundColor: Colors.black87,
              iconColor: Colors.white,
              textStyle: TextStyle(
                color: Colors.white,
                fontSize: 14.0,
              ),
              iconSize: 20.0,
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
              onChanged: (_) {},
            ),
          ],
        ),
      ),
    );
  }
}
