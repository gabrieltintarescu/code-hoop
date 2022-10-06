import 'package:codehoop_client/components/search_bar.dart';
import 'package:codehoop_client/util/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: context.height * 0.45,
            decoration: const BoxDecoration(
              color: kBlueLightColor,
              image: DecorationImage(
                image: AssetImage('assets/images/meditation_bg.png'),
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
                  const SizedBox(height: 15),
                  SizedBox(
                    width: context.width * .5,
                    child: const SearchBar(),
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
