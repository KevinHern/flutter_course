import 'package:flutter/material.dart';
import 'package:flutter_course_demo/components/screen_components.dart';

import '../components/text_card.dart';

class AssetsInclusion extends StatelessWidget {
  static const double spacing = 8.0;

  const AssetsInclusion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenScaffold(
      screenTitle: 'Unit II: Assets Inclusion',
      child: Column(
        children: [
          Text(
            'The Extra Stuff',
            style: Theme.of(context).textTheme.headline1,
          ),
          const SizedBox(
            height: spacing,
          ),
          TextCard(
            text: "Assets ",
            textSpanList: [
              TextSpan(
                text:
                    "are anything extra you add to your project, that is images, new fonts, icons, etc.\n"
                    "To tell Flutter that you will include an asset to the project, you have to define the directory (where that asset is located) in the ",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              TextSpan(
                text: "pubspec.yaml",
                style: TextStyle(
                  fontFamily: Theme.of(context).textTheme.bodyText1!.fontFamily,
                  fontSize: Theme.of(context).textTheme.bodyText1!.fontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text:
                    " file. As a good practice, create a directory in your project called 'Assets' and place all the imagines, icons, etc. you want to "
                    "include and later use.\n\n"
                    "For example, you defined the reference of an image and you want to use it. In that case, there is already a Widget that makes it "
                    "very easy to do. It is called ",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              TextSpan(
                text: "Image.asset.",
                style: TextStyle(
                  fontFamily: Theme.of(context).textTheme.bodyText1!.fontFamily,
                  fontSize: Theme.of(context).textTheme.bodyText1!.fontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: spacing * 2,
          ),
          Image.asset(
            "assets/dash.jpg",
            scale: 0.8,
          ),
        ],
      ),
    );
  }
}
