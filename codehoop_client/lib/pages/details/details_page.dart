import 'package:codehoop_client/components/search_bar.dart';
import 'package:codehoop_client/model/course.dart';
import 'package:codehoop_client/pages/home/components/bottom_nav_bar.dart';
import 'package:codehoop_client/util/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

import 'components/lesson_card.dart';
import 'components/tip_card.dart';

class DetailsPage extends StatelessWidget {
  final Course course;
  const DetailsPage({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavBar(),
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
                    Text(
                      course.name,
                      style: const TextStyle(
                        fontSize: 35.0,
                        color: kTextColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 7),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '${course.duration} Course',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(width: 15),
                        Container(
                          margin: const EdgeInsets.only(bottom: 5),
                          child: RatingBarIndicator(
                            rating: (course.rating / 100) * 5,
                            itemBuilder: (context, index) => const Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            itemCount: 5,
                            itemSize: 18.0,
                            direction: Axis.horizontal,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      width: context.width * .7,
                      child: Text(
                        course.description,
                        style: const TextStyle(wordSpacing: 2, fontSize: 14.2),
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
                      itemCount: course.lessons.length,
                      itemBuilder: ((context, index) => LessonCard(
                            isActive: index == 0 ? true : false,
                            lesson: course.lessons[index],
                          )),
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
                      itemCount: course.instructions.length,
                      itemBuilder: ((context, index) => TipCard(
                            imageUrl: (index % 2 == 0)
                                ? 'assets/icons/programmer.svg'
                                : 'assets/icons/work.svg',
                            title: course.instructions[index].title,
                            description: course.instructions[index].message,
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
