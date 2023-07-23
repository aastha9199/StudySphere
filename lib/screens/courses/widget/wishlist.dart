import 'package:courseapp/constants.dart';
import 'package:courseapp/data%20provider/course_data_provider.dart';
import 'package:courseapp/model/course.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Wishlist extends StatefulWidget {
  const Wishlist({super.key});

  @override
  State<Wishlist> createState() => _WishlistState();
}

class _WishlistState extends State<Wishlist> {
  @override
  Widget build(BuildContext context) {
    List<Course> courseList = getCourseList(context);
    return ListView.builder(
      shrinkWrap: true,
      itemCount: courseList.length,
      itemBuilder: (context, index) {
        Course course = courseList[index];
        return getListItem(course);
      },
    );
  }

  List<Course> getCourseList(BuildContext context) {
    return CourseDataProvider.courseList
        .where((course) => course.isFavourite)
        .toList();
  }

  Widget getListItem(Course course) {
    return Card(
        child: ListTile(
      leading: Image.asset(course.thumbnailUrl),
      title: Text(
        course.title,
        maxLines: 2,
        style: TextStyle(fontSize: 17, color: Colors.grey.shade800),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "By ${course.createdBy}",
            style: const TextStyle(color: kBlueColor, fontSize: 13),
          ),
          Row(
            children: [
              Text(
                course.duration,
                style: TextStyle(color: Colors.grey.shade500, fontSize: 14),
              ),
              const SizedBox(
                width: 10,
              ),
              CircleAvatar(
                radius: 3,
                backgroundColor: Colors.grey,
                child: Container(),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                "${course.lessonNo} Lessons",
                style: TextStyle(color: Colors.grey.shade500, fontSize: 14),
              ),
              const SizedBox(
                width: 10,
              ),
              CircleAvatar(
                radius: 3,
                backgroundColor: Colors.grey,
                child: Container(),
              ),
              const SizedBox(
                width: 10,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text("${course.rate}")
                ],
              ),
              Row(
                children: [
                  Text(
                    "\$${course.price}",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey.shade800,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  InkWell(
                      onTap: () {
                        setState(() {
                          course.isFavourite = false;
                        });
                      },
                      child: const Icon(Icons.delete))
                ],
              )
            ],
          )
        ],
      ),
    ));
  }
}
