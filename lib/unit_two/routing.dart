// Basic Imports
import 'package:flutter/material.dart';
import 'package:flutter_course_demo/components/screen_components.dart';
import 'package:flutter_course_demo/components/text_card.dart';

class RouteManagement extends StatelessWidget {
  static const double spacing = 8.0;

  const RouteManagement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenScaffold(
      screenTitle: "Unit II: Route Management",
      child: Column(
        children: [
          Text(
            'Flutter Screens',
            style: Theme.of(context).textTheme.headline1,
          ),
          const SizedBox(
            height: spacing,
          ),
          TextCard(
            text: "Screens ",
            textSpanList: [
              TextSpan(
                text:
                    "are basically a condensed group of Widgets that represent a page or a screen. Every screen has different purposes and it is good to divide "
                    "the app into many different screens so it is easier for you to manipulate different types of information and it is easier for the "
                    "user to know what they should do.\n\n"
                    "Screens are mostly used to improve the User Experience, because if you try to squish everything in one single screen, the user might feel "
                    "overwhelmed by the sheer amount of visual elements they see in their screen and might just decide to drop the app and find "
                    "another one that feels more 'comfortable' and 'easier' to use.\n\n",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              TextSpan(
                text:
                    "Keep in mind, a Screen does not limit itself to the UI, it also includes the logic behind it and for every new screen, there will be "
                    "a new context totally independent from the other screens.",
                style: TextStyle(
                  fontFamily: Theme.of(context).textTheme.bodyText1!.fontFamily,
                  fontSize: Theme.of(context).textTheme.bodyText1!.fontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const ScreenDivider(),
          Text(
            'Flutter Routes',
            style: Theme.of(context).textTheme.headline1,
          ),
          const SizedBox(
            height: spacing,
          ),
          TextCard(
            text: "'Routes' ",
            textSpanList: [
              TextSpan(
                text:
                    "is how Flutter internally calls the screens you build. As you know, its not enough to create the UI for different Screens you have in "
                    "mind; you also have to link them somehow!\n"
                    "Flutter provides a very friendly and easy-to-understand methodology to link your your different Screens so your app can function properly "
                    "with little to no effort.\n\n"
                    "You will often find that Routes have an associated ",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              TextSpan(
                text: "Route Name",
                style: TextStyle(
                  fontFamily: Theme.of(context).textTheme.bodyText1!.fontFamily,
                  fontSize: Theme.of(context).textTheme.bodyText1!.fontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text:
                    ", which is basically how Flutter recognizes the existence of your screen. With the Route Name, you can easily tell Flutter that after "
                    "a User has performed an action, they should be sent to the respective Screen.",
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ],
          ),
          const SizedBox(
            height: spacing,
          ),
          TextCard(
            text: "'The Navigator' ",
            textSpanList: [
              TextSpan(
                text:
                    "is the special class that allows us in Flutter to manipulate how the user navigates throughout our app - it is the manager.\n\n"
                    "The Navigator allows you to link Screens with or without a Route Name, but the best practices tell us to name ",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              TextSpan(
                text:
                    "every screen, so we don't lose track of the navigation sequence.\n\n",
                style: TextStyle(
                  fontFamily: Theme.of(context).textTheme.bodyText1!.fontFamily,
                  fontSize: Theme.of(context).textTheme.bodyText1!.fontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text:
                    "Now, some of the basic operations that the Navigator provides us are: pushNamed, pop, popAndPushNamed and canPop.\n",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              TextSpan(
                text: "1) pushNamed ",
                style: TextStyle(
                  fontFamily: Theme.of(context).textTheme.bodyText1!.fontFamily,
                  fontSize: Theme.of(context).textTheme.bodyText1!.fontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text:
                    "allows us to send the user to a new screen given its Route Name. We can optionally pass arguments too!\n",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              TextSpan(
                text: "2) pop ",
                style: TextStyle(
                  fontFamily: Theme.of(context).textTheme.bodyText1!.fontFamily,
                  fontSize: Theme.of(context).textTheme.bodyText1!.fontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: "allows us to send the user to the previous screen.\n",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              TextSpan(
                text: "3) popAndPushNamed ",
                style: TextStyle(
                  fontFamily: Theme.of(context).textTheme.bodyText1!.fontFamily,
                  fontSize: Theme.of(context).textTheme.bodyText1!.fontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text:
                    "is the hybrid between Pop and PushNamed. It first performs a pop operation and later a pushNamed.\n",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              TextSpan(
                text: "4) canPop ",
                style: TextStyle(
                  fontFamily: Theme.of(context).textTheme.bodyText1!.fontFamily,
                  fontSize: Theme.of(context).textTheme.bodyText1!.fontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text:
                    "is a special operation, because, first, it checks if its possible to perform if the user can be sent to the previous screen. This operation "
                    "is useful because there are some situations where there is no previous screen. Where do you send the user if there is no previous screen?\n"
                    "Exactly! its really hard to think about, but for Flutter, it will just throw a red screen to your face.",
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ],
          ),
          const SizedBox(
            height: spacing,
          ),
          TextCard(
            text: "Why pop and push?\n",
            textSpanList: [
              TextSpan(
                text:
                    "This is a very technical aspect, but internally, Flutter manages the navigation with the help of a stack. The Stack contains the track of the "
                    "screens that the user has visited in a sequence.\n"
                    "The top of the stack is the screen currently shown to the user and the previous screens visited are located below.\n\n"
                    "Every time you do a 'pushNamed', you are placing a new screen at the top of the stack and when you perform a 'pop', you are effectively removing it.",
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ],
          ),
          const ScreenDivider(),
          Text(
            'Route Mapping',
            style: Theme.of(context).textTheme.headline1,
          ),
          const SizedBox(
            height: spacing,
          ),
          TextCard(
            text: "How do you link a Screen with a Route Name in Flutter?\n",
            textSpanList: [
              TextSpan(
                text: "The answer is very simple: in the ",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              TextSpan(
                text: "main.dart",
                style: TextStyle(
                  fontFamily: Theme.of(context).textTheme.bodyText1!.fontFamily,
                  fontSize: Theme.of(context).textTheme.bodyText1!.fontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text:
                    " file, there are a couple of sections that allows you to configure the navigation of your app.\n"
                    "As with every app, you have to set an ",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              TextSpan(
                text: "Initial Route",
                style: TextStyle(
                  fontFamily: Theme.of(context).textTheme.bodyText1!.fontFamily,
                  fontSize: Theme.of(context).textTheme.bodyText1!.fontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text:
                    ", which is the first screen show to the user everytime they open your application.\n"
                    "The next feature you have to configure is the ",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              TextSpan(
                text: "Route Map",
                style: TextStyle(
                  fontFamily: Theme.of(context).textTheme.bodyText1!.fontFamily,
                  fontSize: Theme.of(context).textTheme.bodyText1!.fontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text:
                    ", which is essentially a structure that you configure to tell Flutter which Screen corresponds to each Route Name you declare.\n"
                    "And lastly, there is a ",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              TextSpan(
                text: "Route Generation",
                style: TextStyle(
                  fontFamily: Theme.of(context).textTheme.bodyText1!.fontFamily,
                  fontSize: Theme.of(context).textTheme.bodyText1!.fontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text:
                    " feature that helps you manage route animations and transitions, handle undefined routes in your Route Map "
                    "and retrieve, prepare and pass arguments to your Screens\n\n",
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ],
          ),
          const SizedBox(
            height: spacing,
          ),
          const DetailsTextCard(
            implementationMessage: "more details on the technical side",
            fileName: "routing.dart and main.dart",
          ),
        ],
      ),
    );
  }
}
