import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CategoryCard extends StatelessWidget {
  final String thumbnailUrl;
  final String title;
  const CategoryCard({
    Key? key,
    required this.thumbnailUrl,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(13),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  const Spacer(),
                  SvgPicture.asset(
                    thumbnailUrl,
                    height: 110,
                    width: 110,
                  ),
                  const Spacer(),
                  Text(
                    '$title Course',
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 15),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
