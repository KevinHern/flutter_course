// Basic Imports
import 'package:flutter/material.dart';

class LessFulDemo extends StatelessWidget {
  static const double spacing = 8.0;

  const LessFulDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Unit One: Less vs Ful',
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
                  children: const [
                    StatelessWidgetDemo(),
                    SizedBox(
                      height: spacing * 2,
                    ),
                    StatefulWidgetDemo(),
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

class StatelessWidgetDemo extends StatelessWidget {
  static const double spacing = 8.0;
  const StatelessWidgetDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Stateless Widget',
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
                text: 'Stateless Widget: ',
                style: TextStyle(
                    fontFamily:
                        Theme.of(context).textTheme.subtitle1!.fontFamily,
                    fontSize: Theme.of(context).textTheme.subtitle1!.fontSize,
                    fontWeight: FontWeight.bold),
                children: [
                  TextSpan(
                    text:
                        "Stateless Widgets are used when you want to have components in your app that don't "
                        "change when certain actions are performed or when values are changed. The main objective with Stateless Widgets "
                        "is to optimize your app performance and create 'static' components that remain the same throughout the whole use of your app.\n"
                        "However, there are exceptions to the rule. Sometimes, Stateless Widgets are used to reflect and show the user the current state "
                        "of their data when they use the application. In this case, they change their appearance on command. This is the most basic "
                        "type of Widget you will always use in every application made with Flutter. ",
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(
          height: spacing,
        ),
        Card(
          child: Padding(
            padding: const EdgeInsets.all(spacing / 2),
            child: RichText(
              text: TextSpan(
                text: 'Some Subtitle here: ',
                style: TextStyle(
                    fontFamily:
                        Theme.of(context).textTheme.subtitle1!.fontFamily,
                    fontSize: Theme.of(context).textTheme.subtitle1!.fontSize,
                    fontWeight: FontWeight.bold),
                children: [
                  TextSpan(
                    text: "Lorem ipsum dolor sit amet consectetur adipiscing "
                        "elit aenean rhoncus, laoreet integer senectus faucibus posuere dictum "
                        "aliquam leo ridiculus, inceptos ultrices id massa dui varius placerat hendrerit.\n\n",
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  TextSpan(
                    text:
                        "Viverra rutrum quisque primis purus eleifend porttitor "
                        "tortor aenean inceptos imperdiet fringilla molestie, dignissim gravida taciti "
                        "phasellus torquent mi placerat vivamus tincidunt sagittis sociosqu.",
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class StatefulWidgetDemo extends StatefulWidget {
  final double spacing = 8.0;
  const StatefulWidgetDemo({Key? key}) : super(key: key);

  @override
  StatefulWidgetDemoState createState() => StatefulWidgetDemoState();
}

class StatefulWidgetDemoState extends State<StatefulWidgetDemo> {
  var counter = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Stateful Widget',
          style: Theme.of(context).textTheme.headline1,
        ),
        SizedBox(
          height: widget.spacing,
        ),
        Card(
          child: Padding(
            padding: EdgeInsets.all(widget.spacing / 2),
            child: RichText(
              text: TextSpan(
                text: 'Stateful Widget: ',
                style: TextStyle(
                    fontFamily:
                        Theme.of(context).textTheme.subtitle1!.fontFamily,
                    fontSize: Theme.of(context).textTheme.subtitle1!.fontSize,
                    fontWeight: FontWeight.bold),
                children: [
                  TextSpan(
                    text:
                        "Stateful Widgets are used mostly when you want the user to interact with your app and you want to "
                        "reflect changes in real time or on command. The main objective of Stateful Widgets is to keep certain information temporarily alive "
                        "and when the user performs an action and changes that information, the UI will respond to this event and display accurate information "
                        "or show new options; it depends what you really want to achieve with Stateful.",
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ],
              ),
            ),
          ),
        ),
        Visibility(
          visible: this.counter > 10,
          child: Column(
            children: [
              SizedBox(
                height: widget.spacing,
              ),
              const SizedBox(
                height: 100,
                width: 100,
                child: FlutterLogo(),
              ),
            ],
          ),
        ),
        SizedBox(
          height: widget.spacing,
        ),
        Card(
          child: Padding(
            padding: EdgeInsets.all(widget.spacing / 2),
            child: SizedBox(
              width: 300,
              child: Center(
                child: RichText(
                  text: TextSpan(
                    text: 'Counter: ',
                    style: TextStyle(
                        fontFamily:
                            Theme.of(context).textTheme.subtitle1!.fontFamily,
                        fontSize:
                            Theme.of(context).textTheme.subtitle1!.fontSize,
                        fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(
                        text: "$counter",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: widget.spacing * 2,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              child: Text(
                'Decrease',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              onPressed: () =>
                  setState(() => this.counter -= this.counter > 0 ? 1 : 0),
            ),
            ElevatedButton(
              child: Text(
                'Increase',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              onPressed: () => setState(() => this.counter += 1),
            ),
          ],
        ),
      ],
    );
  }
}
