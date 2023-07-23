import 'package:courseapp/notifier/course_Category_change_notifier.dart';
import 'package:courseapp/screens/home/widget/category_list.dart';
import 'package:courseapp/screens/home/widget/course_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

class CategoryCourseList extends StatelessWidget {
  const CategoryCourseList({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CourseCategoryChangeNotifier(),
      child: Column(
        children: const [
          CategoryList(),
          CourseList(),
        ],
      ),
    );
  }
}
