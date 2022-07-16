// Basic Imports
import 'package:flutter/material.dart';

class WidgetsLore extends StatelessWidget {
  static const double spacing = 8.0;

  const WidgetsLore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Unit One: The First Block',
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
                      'Widgets',
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
                            text: 'What is a Widget?\n',
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
                                    "To put it bluntly: Widgets are the basic blocks that you use to build your application. They can represent anything: "
                                    "Texts, Boxes, Colors, Bars, Backgrounds, Images, Buttons, Dialogs, Lines, etc. They can be anything to your heart's content!... "
                                    "Or to your client's heart content.\n"
                                    "Nonetheless, think of Widgets like Lego Blocks: with one block, you can build the fundation for something greater - the same concept "
                                    "can be applied to applications made with Flutter.\n\n"
                                    "Everything you currently see on the screen is entirely made up by Widgets - yes, everything!\n\n"
                                    "The Flutter motto is: ",
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                              TextSpan(
                                text: "Everything is a Widget!",
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
                            ],
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: spacing * 2),
                      child: Divider(
                        color: Colors.blueGrey,
                        thickness: 2,
                      ),
                    ),
                    Text(
                      'Widget Tree',
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
                            text: "The App's Heart\n",
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
                                    "The Widget Tree is a structure that describes the application's UI using the concept of a tree. It starts "
                                    "with a widget as the root (normally the name of your app, or known as 'MyApp') and then it starts to spread "
                                    "out. All the screens and logic that you implement can be described using this structure.\n"
                                    "The Widget Tree allows you to understand any app that you come across; its very simple and powerful. As you "
                                    "will see in the future, nesting widgets will make the code less friendly and harder to understand, so the Widget Tree "
                                    "can come in handy to summarize the UI and make it easier for you to read.",
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: spacing * 3,
                    ),
                    Image.asset(
                      "assets/widget_tree.jpg",
                      scale: 0.8,
                    ),
                    const SizedBox(
                      height: spacing * 1.5,
                    ),
                    Text(
                      'Source: panin.org',
                      style: TextStyle(
                          fontFamily:
                              Theme.of(context).textTheme.bodyText1!.fontFamily,
                          fontSize:
                              Theme.of(context).textTheme.bodyText1!.fontSize! *
                                  0.8,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
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
