import 'package:courseapp/model/course_category.dart';
import 'package:courseapp/model/section.dart';
import 'package:courseapp/model/course.dart';

class Course {
  final String _id;
  final String _title;
  final String _thumbnailUrl;
  final String _description;
  final String _createdBy;
  final String _createdDate;
  final double _rate;
  bool _isFavourite;
  final double _price;
  final CourseCategory _courseCategory;
  final String _duration;
  final int _lessonNo;
  final List<Section> _sections;

  Course(
      this._id,
      this._title,
      this._thumbnailUrl,
      this._description,
      this._createdBy,
      this._createdDate,
      this._rate,
      this._isFavourite,
      this._courseCategory,
      this._price,
      this._duration,
      this._lessonNo,
      this._sections);

  bool get isFavourite => _isFavourite;

  set isFavourite(bool value) {
    _isFavourite = value;
  }

  double get rate => _rate;
  String get createdDate => _createdDate;
  String get createdBy => _createdBy;
  String get description => _description;
  String get thumbnailUrl => _thumbnailUrl;
  String get title => _title;
  String get id => _id;
}
