import 'package:courseapp/model/course.dart';
import 'package:courseapp/model/my_course.dart';

class MyCourseDataProvider {
  static final List<MyCourse> _myCourses = [];
  static void addCourse(Course course) {
    _myCourses.add(MyCourse(course));
  }

  static void addAllCourses(List<Course> courses) {
    for (var course in courses) {
      _myCourses.add(MyCourse(course));
    }
  }

  static List<MyCourse> get myCourses => _myCourses;
}
