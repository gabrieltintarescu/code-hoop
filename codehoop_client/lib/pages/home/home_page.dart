import 'package:codehoop_client/util/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'components/category_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            // Height of banner - 45% of total height
            height: context.height * 0.45,
            decoration: const BoxDecoration(
              color: kBannerColor,
              image: DecorationImage(
                alignment: Alignment.centerLeft,
                image: AssetImage('assets/images/undraw_pilates_gpdb.png'),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      alignment: Alignment.center,
                      height: 52,
                      width: 52,
                      decoration: const BoxDecoration(
                        color: Color(0xFFF2BEA1),
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset('assets/icons/menu.svg'),
                    ),
                  ),
                  RichText(
                    text: const TextSpan(
                      // Note: Styles for TextSpans must be explicitly defined.
                      // Child text spans will inherit styles from parent
                      style: TextStyle(
                          fontSize: 35.0,
                          color: kTextColor,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Nexa'),
                      children: [
                        TextSpan(
                          text: 'Welcome to\n',
                        ),
                        TextSpan(
                          text: 'Code',
                          style: TextStyle(
                            fontSize: 52.0,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        TextSpan(
                          text: 'Hoop',
                          style: TextStyle(
                            fontSize: 52.0,
                          ),
                        ),
                        TextSpan(
                          text: '!',
                          style: TextStyle(
                            fontSize: 52.0,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 5,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(29.5),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(top: 5),
                        hintText: 'Search for a course',
                        border: InputBorder.none,
                        icon: SvgPicture.asset('assets/icons/search.svg'),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: .85,
                      children: const [CategoryCard()],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
