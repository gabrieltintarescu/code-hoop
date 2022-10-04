import 'package:codehoop_client/pages/home/home_page.dart';
import 'package:codehoop_client/util/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

main() {
  runApp(GetMaterialApp(
    title: 'CodeHoop',
    debugShowCheckedModeBanner: true,
    home: const HomePage(),
    theme: ThemeData(
      fontFamily: 'Nexa',
      scaffoldBackgroundColor: kBackgroundColor,
    ),
  ));
}
