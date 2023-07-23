import 'package:courseapp/data%20provider/course_data_provider.dart';
import 'package:courseapp/model/course.dart';
import 'package:courseapp/screens/home/widget/course_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class FeaturedCourse extends StatelessWidget {
  const FeaturedCourse({super.key});

  @override
  Widget build(BuildContext context) {
    List<Course> featuredCourseList = [
      CourseDataProvider.courseList[9],
      CourseDataProvider.courseList[0],
      CourseDataProvider.courseList[1],
      CourseDataProvider.courseList[2],
      CourseDataProvider.courseList[10],
      CourseDataProvider.courseList[5],
    ];

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Featured Courses",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade800),
            ),
            InkWell(
              onTap: () {},
              child: const Text(
                "See All",
                style: TextStyle(color: Colors.blue, fontSize: 15),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 200,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: featuredCourseList.length,
              itemBuilder: (context, index) {
                Course course = featuredCourseList[index];

                return CourseItem(course: course);
              }),
        )
      ],
    );
  }
}
