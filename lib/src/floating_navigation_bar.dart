import 'package:floating_navigation_bar/src/nav_bar_items.dart';
import 'package:flutter/material.dart';

class FloatingNavigationBar extends StatelessWidget {
  /// * TO CHANGE THE HEIGHT OF NAVIGATION BAR
  /// * PREFERRED HEIGHT IS BETWEEN [80-100]
  final double barHeight;

  /// * TO CHANGE THE WIDTH OF NAVIGATION BAR
  final double? barWidth;

  /// * FOR CHANGING NAV ITEMS ICON SIZE
  final double? iconSize;

  /// * For changing nav items icon color
  final Color? iconColor;

  /// * Background Color or floating navigation bar
  final Color? backgroundColor;

  //
  final TextStyle? textStyle;

  /// * List to tabs to display
  final List<NavBarItems> items;

  final ValueChanged<int> onChanged;

  /// * For Changing indicator color
  /// * ... height
  /// * ... width
  final Color indicatorColor;
  final double indicatorHeight;
  final double indicatorWidth;

  /// ! THIS WILL IDENTITFY WHICH TAB IS CURRENTLY ACTIVE
  /// ! USING THIS TO SHOW AND HIDE TAB INDICATOR
  static ValueNotifier<int> notifyIndex = ValueNotifier<int>(0);

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
    this.indicatorColor = Colors.black,
    this.indicatorHeight = 5.0,
    this.indicatorWidth = 8.0,
  })  : assert(
          (items.length < 5),
          "NavBarItems can't contain more than 4 itmes",
        ),
        assert(
          barHeight <= 100,
          "\n******\nHeight should be less than or equal to 100\n******\n",
        ),
        assert(
          indicatorWidth <= 15 || indicatorHeight <= 15,
          "\n******\n Too much height given to tab indicator \n******\n",
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
        mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                  ValueListenableBuilder(
                    valueListenable: notifyIndex,
                    builder: (BuildContext context, int value, Widget? child) {
                      return Visibility(
                        visible: value == i,
                        child: Container(
                          height: indicatorHeight,
                          width: indicatorWidth,
                          padding: EdgeInsets.zero,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            color: indicatorColor,
                          ),
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// * FOR CHANGING NAVIGATION BAR  INDEX
  void onPressed(int index) {
    onChanged(index);
    notifyIndex.value = index;
  }
}
