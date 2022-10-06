import 'package:flutter/material.dart';

import 'botttom_nav_button.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 40,
        vertical: 10,
      ),
      height: 80,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          BottomNavButton(
            imageAsset: 'assets/icons/calendar.svg',
            title: 'Today',
          ),
          BottomNavButton(
            imageAsset: 'assets/icons/read-book-icon.svg',
            title: 'Courses',
            isActive: true,
          ),
          BottomNavButton(
            imageAsset: 'assets/icons/Settings.svg',
            title: 'Settings',
          ),
        ],
      ),
    );
  }
}
