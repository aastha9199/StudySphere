import 'package:courseapp/constants.dart';
import 'package:courseapp/model/course_category.dart';
import 'package:courseapp/notifier/course_Category_change_notifier.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    var category = Provider.of<CourseCategoryChangeNotifier>(context).category;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Categories",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.grey.shade800),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 35,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: CourseCategory.values.length,
              itemBuilder: (context, index) {
                CourseCategory courseCategory = CourseCategory.values[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: InkWell(
                    onTap: (() {
                      Provider.of<CourseCategoryChangeNotifier>(context,
                              listen: false)
                          .changeCategory(courseCategory);
                    }),
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: category == courseCategory
                              ? kPrimaryColor
                              : Colors.white,
                          border: Border.all(color: Colors.grey.shade900)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          courseCategory.title,
                          style: TextStyle(
                              fontSize: 15,
                              color: category == courseCategory
                                  ? Colors.white
                                  : Colors.black),
                        ),
                      ),
                    ),
                  ),
                );
              }),
        ),
      ],
    );
  }
}
