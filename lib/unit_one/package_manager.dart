// Basic Imports
import 'package:flutter/material.dart';

class PackageManagerDemo extends StatelessWidget {
  static const double spacing = 8.0;

  const PackageManagerDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Unit One: Packages',
          style: Theme.of(context).textTheme.headline1,
        ),
        leading: IconButton(
          onPressed: () =>
              Navigator.of(context).canPop() ? Navigator.of(context).pop() : {},
          icon: const Icon(Icons.arrow_back_rounded),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(spacing * 2),
            child: Center(
              child: SizedBox(
                width: 600,
                child: Column(
                  children: [
                    Text(
                      'Package Manager',
                      style: Theme.of(context).textTheme.headline1,
                    ),
                    const SizedBox(
                      height: spacing,
                    ),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(spacing / 2),
                        child: RichText(
                          text: TextSpan(
                            text: 'pupsec.yaml: ',
                            style: TextStyle(
                                fontFamily: Theme.of(context)
                                    .textTheme
                                    .subtitle1!
                                    .fontFamily,
                                fontSize: Theme.of(context)
                                    .textTheme
                                    .subtitle1!
                                    .fontSize,
                                fontWeight: FontWeight.bold),
                            children: [
                              TextSpan(
                                text:
                                    "This is the main file that you will be using to import packages. There is a wide variety of packages that "
                                    "contain additional widgets, app functionality, UI stylizers, quality of life functionalities, "
                                    "backend functionalities, testing tools and more.\n"
                                    "It is also used to indicate Flutter where are your assets located, but more of that in Unit Two.\n\n"
                                    "It is worth to mention and clarify that ",
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                              TextSpan(
                                text: "files with the .yaml",
                                style: TextStyle(
                                  fontFamily: Theme.of(context)
                                      .textTheme
                                      .subtitle1!
                                      .fontFamily,
                                  fontSize: Theme.of(context)
                                      .textTheme
                                      .subtitle1!
                                      .fontSize,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text:
                                    " extension are super important files that contain a brief summary of the definition of the project by using "
                                    "a syntax similar to a JSON file. It contains dependencies, framework version, assets definition and more.",
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: spacing * 2,
                    ),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(spacing / 2),
                        child: RichText(
                          text: TextSpan(
                            text: 'Pupsec.yaml Dependencies: ',
                            style: TextStyle(
                                fontFamily: Theme.of(context)
                                    .textTheme
                                    .subtitle1!
                                    .fontFamily,
                                fontSize: Theme.of(context)
                                    .textTheme
                                    .subtitle1!
                                    .fontSize,
                                fontWeight: FontWeight.bold),
                            children: [
                              TextSpan(
                                text:
                                    "The Dependencies area is where you install the package you want to use. However, keep in mind you have to declare "
                                    "the package's name and the version. Depending on your Dart's version, you will be asked to update the package's version "
                                    "for compatibility purposes.\n"
                                    "The other important thing about the dependencies section is, all packages you declared in this section will be included, "
                                    "imported and used in the app's both development and production versions. If you need a package when developing the app and you "
                                    "see it must be included in the final production version, this is where you declare it.",
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: spacing * 2,
                    ),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(spacing / 2),
                        child: RichText(
                          text: TextSpan(
                            text: 'Pupsec.yaml Dev Dependencies: ',
                            style: TextStyle(
                                fontFamily: Theme.of(context)
                                    .textTheme
                                    .subtitle1!
                                    .fontFamily,
                                fontSize: Theme.of(context)
                                    .textTheme
                                    .subtitle1!
                                    .fontSize,
                                fontWeight: FontWeight.bold),
                            children: [
                              TextSpan(
                                text:
                                    "The Dev Dependencies area is where you install the package you want to use solely for development purposes. For example, there are "
                                    "some packages that are used for testing; you only need those while developing the app, the user is expected to use a robust and fully "
                                    "tested app so including testing tools does not make sense.\n"
                                    "In contrast to Dependencies, these packages will only be included, imported and used while you develop the app. The final version "
                                    "won't include them.",
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
