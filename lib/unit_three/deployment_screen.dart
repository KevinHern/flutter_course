// Basic Imports
import 'package:flutter/material.dart';
import 'package:flutter_course_demo/components/screen_components.dart';

import '../components/text_card.dart';

class DeploymentScreen extends StatelessWidget {
  static const double spacing = 8.0;
  const DeploymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenScaffold(
      screenTitle: "Unit III: Production",
      child: Column(
        children: [
          Text(
            'Deployment',
            style: Theme.of(context).textTheme.headline1,
          ),
          const SizedBox(
            height: spacing,
          ),
          TextCard(
            text: "",
            textSpanList: [
              TextSpan(
                text: "Deployment",
                style: TextStyle(
                  fontFamily: Theme.of(context).textTheme.bodyText1!.fontFamily,
                  fontSize: Theme.of(context).textTheme.bodyText1!.fontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text:
                    " is the final phase of every application. It consists of creating a version of the application and launch it to "
                    "the market for users to utilize and consume. The application must have gone through the testing phase before "
                    "transitioning from a developing to a production environment. That means, it must have the passed checkmark on "
                    "every Unit, Integration and System Testing that were planned.\n\n"
                    "For official distribution purposes, the application must be packed in special formats required by the distribution "
                    "platforms such as Google Playstore, iStore, etc. It may also require that the developers sign the application to "
                    "identify the organization behind the application (this is more for legal purposes).\n"
                    "And in other situations, the application can be simply produced in a usable format for unofficial distributions.\n\n"
                    "The app's ",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              TextSpan(
                text: "metadata",
                style: TextStyle(
                  fontFamily: Theme.of(context).textTheme.bodyText1!.fontFamily,
                  fontSize: Theme.of(context).textTheme.bodyText1!.fontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text:
                    " is really important for a production environment, because it marks information such as the app's versioning, "
                    "app's ID, app's publisher and other important information. In some situations, it can also help in creating more "
                    "advanced applications such as Progress Web Applications.\n",
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ],
          ),
          const ScreenDivider(),
          Text(
            'Application Formats',
            style: Theme.of(context).textTheme.headline1,
          ),
          const SizedBox(
            height: spacing,
          ),
          TextCard(
            text: "",
            textSpanList: [
              TextSpan(
                text: "Android Package (APK)",
                style: TextStyle(
                  fontFamily: Theme.of(context).textTheme.bodyText1!.fontFamily,
                  fontSize: Theme.of(context).textTheme.bodyText1!.fontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text:
                    " is a format of how a mobile app is packed for distribution across many Android devices. "
                    "It is the simplest version for distribution and it contains all the needed files for an Android OS to install "
                    "and execute the application. Moreover, an APK is essentially a compressed files that contains libraries, "
                    "the compiled source code, resources, assets, specific platform code, etc.\n"
                    "Due to Android being built on Java, APK is like a JAR file but designed specifically for Android devices.\n\n"
                    "For official distributions, an ",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              TextSpan(
                text: "Android Application Bundle (AAB)",
                style: TextStyle(
                  fontFamily: Theme.of(context).textTheme.bodyText1!.fontFamily,
                  fontSize: Theme.of(context).textTheme.bodyText1!.fontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: " is used instead of an APK. An AAB is a special format "
                    "required by Google Playstore for official distribution purposes. AAB allows Google Playstore to run faster "
                    "analysis on the app and optimize the files are actually needed for each device to install said application.",
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
