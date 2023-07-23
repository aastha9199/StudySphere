import 'package:courseapp/util/route_names.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../constants.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/intro/intro.png"),
          SizedBox(
            height: 30,
          ),
          Text(
            "Grow Your Skills",
            style: TextStyle(fontSize: 25, color: Colors.grey.shade900),
          ),
          SizedBox(height: 20),
          Text(
            "Choose your favourite course & start learning",
            style: TextStyle(fontSize: 19, color: Colors.grey.shade500),
          ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, RouteNames.courseHome);
              },
              style: ElevatedButton.styleFrom(
                  primary: kPrimaryColor,
                  padding: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  )),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                child: Text(
                  "Getting started",
                  style: TextStyle(fontSize: 20),
                ),
              ))
        ],
      ),
    );
  }
}
