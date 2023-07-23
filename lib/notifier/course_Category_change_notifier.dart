import 'package:courseapp/model/course_category.dart';
import 'package:flutter/cupertino.dart';

class CourseCategoryChangeNotifier extends ChangeNotifier {
  CourseCategory _category = CourseCategory.all;

  CourseCategory get category => _category;

  void changeCategory(CourseCategory category) {
    _category = category;
    notifyListeners();
  }
}
