import 'package:floating_navigation_bar/src/nav_bar_items.dart';
import 'package:flutter/material.dart';

class FloatingNavigationBar extends StatelessWidget {
  final double? barHeight;
  final double? barWidth;
  final double? iconSize;
  final Color? iconColor;
  final Color? backgroundColor;
  final TextStyle? textStyle;
  final List<NavBarItems> navBarItems;
  final ValueChanged<int> onChanged;

  const FloatingNavigationBar({
    Key? key,
    required this.navBarItems,
    required this.onChanged,
    this.barHeight = 75.0,
    this.barWidth,
    this.iconColor,
    this.iconSize,
    this.textStyle,
    this.backgroundColor,
  })  : assert(
          (navBarItems.length < 5),
          "NavBarItems can't contain more than 4 itmes",
        ),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: barHeight,
      width: barWidth,
      margin: const EdgeInsets.all(15.0),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          navBarItems.length,
          (i) => GestureDetector(
            onTap: () => onPressed(i),
            child: Container(
              width: 90.0,
              color: Colors.transparent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    navBarItems[i].icon,
                    size: iconSize,
                    color: iconColor,
                  ),
                  Text(
                    navBarItems[i].title,
                    style: textStyle,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void onPressed(int index) {
    onChanged(index);
  }
}
