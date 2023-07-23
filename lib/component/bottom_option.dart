import 'package:courseapp/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BottomOption extends StatelessWidget {
  const BottomOption({super.key, required this.selectedIndex});

  final int selectedIndex;
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: 5,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: (() {}),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.home,
                      color: getSelectedColor(1),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Home",
                      style: TextStyle(
                        fontSize: 13,
                        color: getSelectedColor(1),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: (() {}),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.play_circle_outline,
                      color: getSelectedColor(2),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "My Courses",
                      style: TextStyle(
                        fontSize: 13,
                        color: getSelectedColor(2),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: (() {}),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.favorite_border,
                      color: getSelectedColor(3),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Wishlist",
                      style: TextStyle(
                        fontSize: 13,
                        color: getSelectedColor(3),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: (() {}),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.people,
                      color: getSelectedColor(4),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Account",
                      style: TextStyle(
                        fontSize: 13,
                        color: getSelectedColor(4),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Color getSelectedColor(int optionIndex) {
    return (selectedIndex == optionIndex)
        ? kPrimaryColor
        : Colors.grey.shade800;
  }
}
