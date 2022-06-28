// Basic Imports
import 'package:flutter/material.dart';

// Screens
import 'package:flutter_course_demo/unit_one/unit_one_screen.dart';
import 'package:flutter_course_demo/unit_two/unit_two_screen.dart';
import 'package:flutter_course_demo/unit_three/unit_three_screen.dart';

class MainScreen extends StatelessWidget {
  static const double spacing = 12.0;
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Flutter Demo',
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SizedBox(
              width: 600,
              child: Column(
                children: const [
                  UnitOneMenu(),
                  SizedBox(
                    height: spacing,
                  ),
                  UnitTwoMenu(),
                  SizedBox(
                    height: spacing,
                  ),
                  UnitThreeMenu(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
