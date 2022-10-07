import 'package:codehoop_client/util/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../components/search_bar.dart';
import 'components/bottom_nav_bar.dart';
import 'components/category_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final mockupData = [
      {
        'url': 'assets/icons/security-illustration.svg',
        'title': 'Cyber Security'
      },
      {'url': 'assets/icons/cloud-illustration.svg', 'title': 'Java Advanced'},
      {
        'url': 'assets/icons/computer-illustration.svg',
        'title': 'Cyber Security Course'
      },
      {'url': 'assets/icons/gaming-illustration.svg', 'title': 'Unity Game'},
      {
        'url': 'assets/icons/computer2-illustration.svg',
        'title': 'Data Structures'
      },
      {'url': 'assets/icons/websiteillustration.svg', 'title': 'Web Design'},
    ];

    return Scaffold(
      bottomNavigationBar: const BottomNavBar(),
      body: SingleChildScrollView(
        child: Stack(
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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
                    const SearchBar(),
                    const SizedBox(height: 30),
                    GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        childAspectRatio: .85,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20,
                        maxCrossAxisExtent: context.width / 2,
                      ),
                      itemCount: mockupData.length,
                      itemBuilder: ((context, index) => CategoryCard(
                            thumbnailUrl: mockupData[index]['url'] ?? 'url',
                            title: mockupData[index]['title'] ?? 'title',
                          )),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
