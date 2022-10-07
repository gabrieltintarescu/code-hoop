import 'dart:io';

import 'package:codehoop_client/pages/splash/splash_screen.dart';
import 'package:codehoop_client/util/app_http_overrides.dart';
import 'package:codehoop_client/util/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

main() {
  HttpOverrides.global = MyHttpOverrides();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(GetMaterialApp(
    title: 'CodeHoop',
    debugShowCheckedModeBanner: false,
    home: const SplashScreen(),
    theme: ThemeData(
      fontFamily: 'Nexa',
      scaffoldBackgroundColor: kBackgroundColor,
    ),
  ));
}
