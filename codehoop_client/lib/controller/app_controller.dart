import 'package:codehoop_client/model/course.dart';
import 'package:codehoop_client/pages/home/home_page.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class AppController extends GetxController {
  final API_URL = 'http://5.12.218.236/api/v1/courses';
  var coursesList = <Course>[].obs;

  @override
  void onInit() {
    super.onInit();
    loadSplashScreen();
    loadCourses();
  }

  Future<List<Course>> fetchCourses() async {
    final response = await http.get(Uri.parse(API_URL));

    if (response.statusCode == 200) {
      return courseFromJson(response.body);
    } else {
      Get.snackbar('Error', 'Something went wrong.');
      throw Exception('Failed to load courses!');
    }
  }

  Future<void> loadCourses() async {
    coursesList.value = await fetchCourses();
  }

  Future<void> loadSplashScreen() async {
    await Future.delayed(const Duration(seconds: 3));
    Get.offAll(() => const HomePage(), transition: Transition.circularReveal);
  }
}
