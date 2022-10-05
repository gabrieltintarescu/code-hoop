import 'package:codehoop_client/util/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavButton extends StatelessWidget {
  final String imageAsset;
  final String title;
  final bool isActive;
  const BottomNavButton({
    required this.imageAsset,
    required this.title,
    this.isActive = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(isActive);
    return GestureDetector(
      onTap: () {},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SvgPicture.asset(
            imageAsset,
            height: 25,
            color: isActive ? kActiveIconColor : kTextColor,
          ),
          Text(
            title,
            style: TextStyle(color: isActive ? kActiveColor : kTextColor),
          ),
        ],
      ),
    );
  }
}
