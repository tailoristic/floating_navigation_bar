import 'package:floating_navigation_bar/src/nav_bar_items.dart';
import 'package:flutter/material.dart';

class FloatingNavigationBar extends StatelessWidget {
  final double barHeight;
  final double? barWidth;
  final double? iconSize;
  final Color? iconColor;
  final Color? backgroundColor;
  final TextStyle? textStyle;
  final List<NavBarItems> items;
  final ValueChanged<int> onChanged;

  const FloatingNavigationBar({
    Key? key,
    required this.items,
    required this.onChanged,
    this.barHeight = 80.0,
    this.barWidth = 400.0,
    this.iconColor,
    this.iconSize,
    this.textStyle,
    this.backgroundColor,
  })  : assert(
          (items.length < 5),
          "NavBarItems can't contain more than 4 itmes",
        ),
        assert(
          barHeight <= 100,
          "\n******\nHeight should be less than or equal to 100\n******\n",
        ),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: barHeight,
      width: barWidth,
      margin: const EdgeInsets.symmetric(
        horizontal: 15.0,
        vertical: 20.0,
      ),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          items.length,
          (i) => GestureDetector(
            onTap: () => onPressed(i),
            child: Container(
              width: 90.0,
              color: Colors.transparent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    items[i].icon,
                    size: iconSize,
                    color: iconColor,
                  ),
                  Text(
                    items[i].title,
                    style: textStyle,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
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
