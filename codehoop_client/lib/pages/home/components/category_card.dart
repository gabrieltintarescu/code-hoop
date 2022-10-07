import 'package:codehoop_client/model/course.dart';
import 'package:codehoop_client/pages/details/details_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class CategoryCard extends StatelessWidget {
  final Course course;
  const CategoryCard({Key? key, required this.course}) : super(key: key);

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
            onTap: () => Get.to(
              () => DetailsPage(course: course),
              transition: Transition.cupertino,
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  const Spacer(),
                  SvgPicture.network(
                    course.imageUrl,
                    height: 110,
                    width: 110,
                    placeholderBuilder: (context) =>
                        const CircularProgressIndicator(color: Colors.grey),
                  ),
                  const Spacer(),
                  Text(
                    '${course.name} Course',
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
