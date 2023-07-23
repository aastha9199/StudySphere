import 'package:courseapp/model/course.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class FavouriteOption extends StatefulWidget {
  const FavouriteOption({super.key, required this.course});

  final Course course;

  @override
  State<FavouriteOption> createState() => _FavouriteOptionState();
}

class _FavouriteOptionState extends State<FavouriteOption> {
  bool isFavourite = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    isFavourite = widget.course.isFavourite;
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        setState(() {
          isFavourite = !isFavourite;
          widget.course.isFavourite = isFavourite;
        });
      },
      icon: Icon(
        isFavourite ? Icons.favorite : Icons.favorite_border,
        color: Colors.pink,
      ),
    );
  }
}
