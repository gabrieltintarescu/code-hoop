import 'package:codehoop_client/components/search_bar.dart';
import 'package:codehoop_client/util/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'components/lesson_card.dart';
import 'components/tip_card.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> mockupData =
        List.generate(6, (index) => 'test').toList();

    final List<int> tipData = List.generate(2, (index) => index).toList();

    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: context.height * 0.45,
              decoration: const BoxDecoration(
                color: kBlueLightColor,
                image: DecorationImage(
                  image: AssetImage('assets/images/teach3_bg.png'),
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: context.height * 0.05),
                    const Text(
                      'Advanced Java',
                      style: TextStyle(
                        fontSize: 35.0,
                        color: kTextColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 7),
                    const Text(
                      '3-10 Min Course',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      width: context.width * .7,
                      child: const Text(
                        'This course will show you how to build Android apps using best practices recommended by Google.',
                        style: TextStyle(wordSpacing: 2, fontSize: 14.2),
                      ),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: context.width * .5,
                      child: const SearchBar(),
                    ),
                    const SizedBox(height: 60),
                    GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        childAspectRatio: 2.5,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20,
                        maxCrossAxisExtent: context.width / 2,
                      ),
                      itemCount: mockupData.length,
                      itemBuilder: ((context, index) =>
                          const LessonCard(isActive: false)),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Useful Tips',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: tipData.length,
                      itemBuilder: ((context, index) => const TipCard(
                            imageUrl: 'assets/icons/programmer.svg',
                            title: 'Take your time!',
                            description: 'You can always pause your course.',
                          )),
                    )
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
