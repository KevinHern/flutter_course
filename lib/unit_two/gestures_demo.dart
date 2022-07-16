// Basic Imports
import 'package:flutter/material.dart';
import 'package:flutter_course_demo/components/screen_components.dart';

import '../components/text_card.dart';

class GesturesScreen extends StatelessWidget {
  static const double spacing = 8.0;
  const GesturesScreen({Key? key}) : super(key: key);

  void _showDialog({required String message, required BuildContext context}) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(
            'Warning',
            style: Theme.of(context).textTheme.headline1,
          ),
          content: Text(
            message,
            style: Theme.of(context).textTheme.bodyText1,
          ),
          actions: [
            ElevatedButton(
              onPressed: () => Navigator.of(context).canPop()
                  ? Navigator.of(context).pop()
                  : {},
              child: Text(
                'Ok',
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return ScreenScaffold(
      screenTitle: "Unit II: User Actions",
      child: Column(
        children: [
          Text(
            'Gestures',
            style: Theme.of(context).textTheme.headline1,
          ),
          const SizedBox(
            height: spacing,
          ),
          TextCard(
            text: "A Gesture ",
            textSpanList: [
              TextSpan(
                text:
                    "is an action made by the user to interact with the application. Gestures are mostly based on the current "
                    "known actions the users can do with their mobile phones, such as pinching, zooming, panning, dragging, tapping, etc.\n"
                    "They can be programmed in Flutter by using the ",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              TextSpan(
                text: "GestureDetector Widget",
                style: TextStyle(
                  fontFamily: Theme.of(context).textTheme.bodyText1!.fontFamily,
                  fontSize: Theme.of(context).textTheme.bodyText1!.fontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: " or ",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              TextSpan(
                text: "InkWell Widget.\n\n",
                style: TextStyle(
                  fontFamily: Theme.of(context).textTheme.bodyText1!.fontFamily,
                  fontSize: Theme.of(context).textTheme.bodyText1!.fontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text:
                    "They key difference between the widgets is that the GestureDetector Widget ",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              TextSpan(
                text:
                    " doesn't show an animation when the action is performed and covers a lot more of actions",
                style: TextStyle(
                  fontFamily: Theme.of(context).textTheme.bodyText1!.fontFamily,
                  fontSize: Theme.of(context).textTheme.bodyText1!.fontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: " while the InkWell Widget ",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              TextSpan(
                text:
                    " shows an animation and doesn't have a wide variety of actions available.\n\n",
                style: TextStyle(
                  fontFamily: Theme.of(context).textTheme.bodyText1!.fontFamily,
                  fontSize: Theme.of(context).textTheme.bodyText1!.fontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text:
                    "Below you find 2 Flutter Logos and each one will be implemented with GestureDetector and InkWell Widgets, respectively. "
                    "Try them out!",
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ],
          ),
          const SizedBox(
            height: spacing,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      'GestureDetector Widget',
                      style: Theme.of(context).textTheme.headline1,
                    ),
                    const SizedBox(
                      height: spacing,
                    ),
                    GestureDetector(
                      onTap: () => _showDialog(
                          message: "Simple Tap Action", context: context),
                      onDoubleTap: () => _showDialog(
                          message: "Double Tap Action", context: context),
                      onLongPress: () => _showDialog(
                          message: "Tap and Hold Action", context: context),
                      onPanEnd: (details) =>
                          _showDialog(message: "Pan Action", context: context),
                      onVerticalDragEnd: (details) =>
                          _showDialog(message: "Drag Action", context: context),
                      child: const Card(
                        child: FlutterLogo(
                          size: 255,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Text(
                      'InkWell Widget',
                      style: Theme.of(context).textTheme.headline1,
                    ),
                    const SizedBox(
                      height: spacing,
                    ),
                    Card(
                      child: InkWell(
                        onTap: () => _showDialog(
                            message: "Simple Tap Action", context: context),
                        onDoubleTap: () => _showDialog(
                            message: "Double Tap Action", context: context),
                        onLongPress: () => _showDialog(
                            message: "Tap and Hold Action", context: context),
                        child: const FlutterLogo(
                          size: 255,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
