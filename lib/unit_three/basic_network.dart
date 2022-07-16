// Basic Imports

import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_course_demo/components/screen_components.dart';

import '../components/text_card.dart';

class BasicNetworkScreen extends StatelessWidget {
  static const double spacing = 8.0;
  const BasicNetworkScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenScaffold(
      screenTitle: "Unit III: Basic Networking",
      child: Column(
        children: [
          Text(
            'JSON Format',
            style: Theme.of(context).textTheme.headline1,
          ),
          const SizedBox(
            height: spacing,
          ),
          TextCard(
            text: "",
            textSpanList: [
              TextSpan(
                text:
                    "Before we get into the real deep and spicy stuff (HTTP petitions to servers to retrieve or send information), we have to understand how machines can actually understand "
                    "each other when they communicate. We won't go into the deep technical details but rather glance on how we can set a standard form of communication between devices.\n"
                    "All the machines over the internet have different ways to communicate. There are protocols, the OSI Model and such. However, we as app developers, we only care "
                    "about the information we can send and retrieve from those interactions.\n\n"
                    "You may have heard of ",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              TextSpan(
                text: "JSON or XML files",
                style: TextStyle(
                  fontFamily: Theme.of(context).textTheme.bodyText1!.fontFamily,
                  fontSize: Theme.of(context).textTheme.bodyText1!.fontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text:
                    ". These files are used in many applications that involve communication to an external machine over the internet. It really depends "
                    "on the ",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              TextSpan(
                text: "communication agreement",
                style: TextStyle(
                  fontFamily: Theme.of(context).textTheme.bodyText1!.fontFamily,
                  fontSize: Theme.of(context).textTheme.bodyText1!.fontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: " to either implement JSON or XML.\n"
                    "You may also heard the term ",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              TextSpan(
                text: "API (Application Programming Interface)",
                style: TextStyle(
                  fontFamily: Theme.of(context).textTheme.bodyText1!.fontFamily,
                  fontSize: Theme.of(context).textTheme.bodyText1!.fontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text:
                    ", which is, essentially, an intermediary between your application and a server. It defines "
                    "a bunch of operations that developers can use, along with a description of what they do. We, as developers, have to send JSONs or XMLs that fit to formats defined "
                    "by the API, otherwise, the communication process will be a failure.\n\n"
                    "Whew, those were a lot of terms and you may feel confused - I know it is a lot to digest. What I want you to keep in your mind is that ",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              TextSpan(
                text:
                    "JSON and XML are both standard ways to exchange information between devices over the internet",
                style: TextStyle(
                  fontFamily: Theme.of(context).textTheme.bodyText1!.fontFamily,
                  fontSize: Theme.of(context).textTheme.bodyText1!.fontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text:
                    ". However, the information that you send and the information you receive come in a ",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              TextSpan(
                text: "defined format you have to respect",
                style: TextStyle(
                  fontFamily: Theme.of(context).textTheme.bodyText1!.fontFamily,
                  fontSize: Theme.of(context).textTheme.bodyText1!.fontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: "; otherwise, the communication process will fail.",
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ],
          ),
          const SizedBox(
            height: spacing * 2,
          ),
          Image.asset(
            "assets/json_summary.png",
            scale: 0.8,
          ),
          const SizedBox(
            height: spacing * 1.5,
          ),
          Text(
            'Source: json.org',
            style: TextStyle(
                fontFamily: Theme.of(context).textTheme.bodyText1!.fontFamily,
                fontSize:
                    Theme.of(context).textTheme.bodyText1!.fontSize! * 0.8,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
          const SizedBox(
            height: spacing * 2,
          ),
          Image.asset(
            "assets/json_example.png",
            scale: 0.8,
          ),
          const SizedBox(
            height: spacing * 1.5,
          ),
          Text(
            'Source: https://addons.mozilla.org',
            style: TextStyle(
                fontFamily: Theme.of(context).textTheme.bodyText1!.fontFamily,
                fontSize:
                    Theme.of(context).textTheme.bodyText1!.fontSize! * 0.8,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
          const ScreenDivider(),
          Text(
            "HTTP Petitions",
            style: Theme.of(context).textTheme.headline1,
          ),
          const SizedBox(
            height: spacing,
          ),
          TextCard(
            text: "GET and POST requests",
            textSpanList: [
              TextSpan(
                text:
                    " are the main protocols of communication between devices over the internet. These protocols define a format on how the machines ",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              TextSpan(
                text: "ask and return information",
                style: TextStyle(
                  fontFamily: Theme.of(context).textTheme.bodyText1!.fontFamily,
                  fontSize: Theme.of(context).textTheme.bodyText1!.fontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text:
                    ". With these protocols, you specify to who you are asking information, what kind of information you want and you can also specify "
                    "parameters that can be used by the receiver to return more specific information.\n\n"
                    "However, there is a key difference between GET and POST requests and it lies on how the parameters are encoded.\n"
                    "GET requests encode the parameters ",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              TextSpan(
                text: "inside the URI or Link",
                style: TextStyle(
                  fontFamily: Theme.of(context).textTheme.bodyText1!.fontFamily,
                  fontSize: Theme.of(context).textTheme.bodyText1!.fontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: " while POST requests encode the parameters ",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              TextSpan(
                text: "in another section called 'body'.",
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
            "assets/get_request.png",
            scale: 0.8,
          ),
          const SizedBox(
            height: spacing * 1.5,
          ),
          Text(
            'Source: https://www.guru99.com',
            style: TextStyle(
                fontFamily: Theme.of(context).textTheme.bodyText1!.fontFamily,
                fontSize:
                    Theme.of(context).textTheme.bodyText1!.fontSize! * 0.8,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
          const SizedBox(
            height: spacing * 2,
          ),
          Image.asset(
            "assets/post_request.png",
            scale: 0.8,
          ),
          const SizedBox(
            height: spacing * 1.5,
          ),
          Text(
            'Source: https://www.guru99.com',
            style: TextStyle(
                fontFamily: Theme.of(context).textTheme.bodyText1!.fontFamily,
                fontSize:
                    Theme.of(context).textTheme.bodyText1!.fontSize! * 0.8,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
        ],
      ),
    );
  }
}
