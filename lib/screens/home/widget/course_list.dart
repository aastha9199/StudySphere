import 'package:courseapp/data%20provider/course_data_provider.dart';
import 'package:courseapp/model/course.dart';
import 'package:courseapp/model/course_category.dart';
import 'package:courseapp/notifier/course_Category_change_notifier.dart';
import 'package:courseapp/screens/home/widget/course_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:path/path.dart' as Path;
import 'package:provider/provider.dart';

class CourseList extends StatelessWidget {
  const CourseList({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      children: getCourseList().map((course) {
        return CourseItem(course: course);
      }).toList(),
    );
  }

  List<Course> getCourseList() {
    var category =
        Provider.of<CourseCategoryChangeNotifier>(this.context).category;

    if (category == CourseCategory.all) {
      return CourseDataProvider.courseList;
    }
    return CourseDataProvider.courseList
        .where((course) => course.courseCategory == category)
        .toList();
  }
}
