// To parse this JSON data, do
//
//     final course = courseFromJson(jsonString);

import 'dart:convert';

List<Course> courseFromJson(String str) =>
    List<Course>.from(json.decode(str).map((x) => Course.fromJson(x)));

String courseToJson(List<Course> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Course {
  Course({
    required this.id,
    required this.imageUrl,
    required this.name,
    required this.description,
    required this.duration,
    required this.rating,
    required this.lessons,
    required this.instructions,
  });

  final int id;
  final String imageUrl;
  final String name;
  final String description;
  final String duration;
  final int rating;
  final List<Lesson> lessons;
  final List<Instruction> instructions;

  factory Course.fromJson(Map<String, dynamic> json) => Course(
        id: json["id"],
        imageUrl: json["imageUrl"],
        name: json["name"],
        description: json["description"],
        duration: json["duration"],
        rating: json["rating"],
        lessons:
            List<Lesson>.from(json["lessons"].map((x) => Lesson.fromJson(x))),
        instructions: List<Instruction>.from(
            json["instructions"].map((x) => Instruction.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "imageUrl": imageUrl,
        "name": name,
        "description": description,
        "duration": duration,
        "rating": rating,
        "lessons": List<dynamic>.from(lessons.map((x) => x.toJson())),
        "instructions": List<dynamic>.from(instructions.map((x) => x.toJson())),
      };
}

class Instruction {
  Instruction({
    required this.id,
    required this.title,
    required this.message,
  });

  final int id;
  final String title;
  final String message;

  factory Instruction.fromJson(Map<String, dynamic> json) => Instruction(
        id: json["id"],
        title: json["title"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "message": message,
      };
}

class Lesson {
  Lesson({
    required this.id,
    required this.name,
    required this.videoUrl,
  });

  final int id;
  final String name;
  final String videoUrl;

  factory Lesson.fromJson(Map<String, dynamic> json) => Lesson(
        id: json["id"],
        name: json["name"],
        videoUrl: json["videoUrl"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "videoUrl": videoUrl,
      };
}
