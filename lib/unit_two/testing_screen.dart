// Basic Imports
import 'package:flutter/material.dart';
import 'package:flutter_course_demo/components/screen_components.dart';

import '../components/text_card.dart';

class TestingScreen extends StatelessWidget {
  static const double spacing = 8.0;
  const TestingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenScaffold(
      screenTitle: "Unit II: Bug and Error Fixing",
      child: Column(
        children: [
          Text(
            'Testing',
            style: Theme.of(context).textTheme.headline1,
          ),
          const SizedBox(
            height: spacing,
          ),
          TextCard(
            text: "",
            textSpanList: [
              TextSpan(
                text: "Testing",
                style: TextStyle(
                  fontFamily: Theme.of(context).textTheme.bodyText1!.fontFamily,
                  fontSize: Theme.of(context).textTheme.bodyText1!.fontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text:
                    " is a critical phase of every app development. It consists of spending time to simulate possible scenarios and test "
                    "if the application crashes, outputs an error or simply executes everything correctly.\n"
                    "The time we spend in this phase is the second highest of every app project.\n\n"
                    "Depending on the development methodology we selected to develop the app, testing may appear on different stages "
                    "of the development of the app (final phases, every time we finish a module, etc.).\n\n"
                    "There are many types of testing and they test different aspects of the app. These are:\n",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              TextSpan(
                text: "- Unit Testing:",
                style: TextStyle(
                  fontFamily: Theme.of(context).textTheme.bodyText1!.fontFamily,
                  fontSize: Theme.of(context).textTheme.bodyText1!.fontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text:
                    " This type of testing has the goal to test each individual software components that make up the app. We want to "
                    "check their correctness and that their functionality is the one we expect. This is basically testing each componente and "
                    "check they do what they were intended to do.\n\n",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              TextSpan(
                text: "- Integration Testing:",
                style: TextStyle(
                  fontFamily: Theme.of(context).textTheme.bodyText1!.fontFamily,
                  fontSize: Theme.of(context).textTheme.bodyText1!.fontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text:
                    " This other type of testing focuses on testing the interactions and data flow between the software modules. "
                    "The individual components may work as intended if we give them ideal dummy data, but in a real scenario, many "
                    "modules will come into play and each one will modify the data. When they pass the information to the next module, "
                    "its possible that during that transition, bugs are introduced because the data flow logic wasn't correctly implemented.\n\n",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              TextSpan(
                text: "- System Testing:",
                style: TextStyle(
                  fontFamily: Theme.of(context).textTheme.bodyText1!.fontFamily,
                  fontSize: Theme.of(context).textTheme.bodyText1!.fontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text:
                    " And the other well known type of testing consists of testing different aspects of the application beyond its intended functionality. "
                    "System testing tests the app as a whole in different real life situations and check how it responses. It focuses on "
                    "testing the Usability, Load Capacity, Responsiveness, Functionality and many more aspects. We have already tested the individual "
                    "components and their interactions, but it is mandatory to test the application (as a whole) in simulated real life situations.\n\n",
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ],
          ),
          const ScreenDivider(),
          Text(
            'Flutter Testing',
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
                    "Flutter provides good basic tools for Unit and Integration testing. For Flutter, Unit Testing means testing "
                    "individual functions and Integration Testing consists of testing the interaction and behaviour between functions "
                    "and Widgets.\n"
                    "Flutter introduces Widget testing which falls into both Unit and Integration testing. However, for System Testing, "
                    "Flutter does not provide tools to do that, but rather, the methodology and metrics are defined by the testing team.\n\n"
                    "One of the great additions to Flutter is a dedicated Testing area with integrated functions that help to evaluate "
                    "the behaviour of our software components. The cycle is this:\n",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              TextSpan(
                text:
                    "Create dummy data > Execute selected Function for Testing > Evaluate Expected vs Obtained results\n\n",
                style: TextStyle(
                  fontFamily: Theme.of(context).textTheme.bodyText1!.fontFamily,
                  fontSize: Theme.of(context).textTheme.bodyText1!.fontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text:
                    "One of the most used and helpful packages for testing is the ",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              TextSpan(
                text: "Mockito Package",
                style: TextStyle(
                  fontFamily: Theme.of(context).textTheme.bodyText1!.fontFamily,
                  fontSize: Theme.of(context).textTheme.bodyText1!.fontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text:
                    ". This package helps to create Mocks and Stubs (which are essentially fake objects with predefined "
                    "behaviour) when testing certain functionalities. There may be cases that some functions may require some "
                    "unfinished or unpolished dependencies. To make testing faster, Mockito helps to simulate the behaviour of "
                    "said unfinished dependencies to help not stall the development of the application.\n"
                    "The Cycle is this:\n",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              TextSpan(
                text:
                    "Mock Variable > Prepare Data > Execute selected Function for Testing > Evaluate Expected vs Obtained results\n\n",
                style: TextStyle(
                  fontFamily: Theme.of(context).textTheme.bodyText1!.fontFamily,
                  fontSize: Theme.of(context).textTheme.bodyText1!.fontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
