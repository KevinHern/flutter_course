// Basic Imports
import 'package:flutter/material.dart';

class StateManagementDemo extends StatelessWidget {
  static const double spacing = 8.0;

  const StateManagementDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Unit One: State and Variables',
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
                      'State Management',
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
                            text: 'What is State? ',
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
                                    "State is basically the combination of all variables that you have created to "
                                    "manipulate information as the user utilizes the app. However, The definition of State limits "
                                    "itself to the current values that all of your variables have in a specific moment.\n"
                                    "When a user performs an action, they will likely change the values of some variables that store "
                                    "information and when that happens, it is said that the app has transitioned into a new State.\n\n"
                                    "We have to emphasize that the State is solely the information and variables but NOT the UI. The UI displays widgets "
                                    "and components that ",
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                              TextSpan(
                                text: "REFLECT",
                                style: TextStyle(
                                  fontFamily: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .fontFamily,
                                  fontSize: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .fontSize,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text: " the current state of the application. ",
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
                            text: 'What is Context? ',
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
                                    "Context can be used interchangeably with State. However, have in mind the application can have more than just 1 context at the same time. "
                                    "Apps can have many contexts so its easier to delegate which widgets manage certain pieces of information.\n"
                                    "There is another important detail: Contexts follow a tree structure. That means, Contexts that are at the same level can't share "
                                    "information with each other. But, if there is a context above them, all the variables that this 'Parent' Context has are shared between "
                                    "all the 'Children' Contexts.\n"
                                    "The parent's context can only be modified by its own associated Widget and by all the Children Widgets; but it can't modify "
                                    "the Childrens' Contexts, it doesn't know the existence of their associated variables.\n\n"
                                    "It is a complex concept, so think of Contexts like Boxes. You declare some variables within that box. Those variables can be accessed "
                                    "by another box if the box is placed inside the first one. However, if there is another box but it is outside, it doesn't have a way "
                                    "to know what is contained in the first box.",
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
                            text: 'Stateless, Stateful and Context: ',
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
                            children: [
                              TextSpan(
                                text:
                                    "Every widget you add, either has 2 of these roles: it is only a context consumer or it is a context editor.\n"
                                    "As you recall, Stateless Widgets have the primary function of showing static information or reflecting the current State of the app, "
                                    "while Stateful Widgets are used to create a Widget which contains variables and the information that those variables store change as "
                                    "the user performs actions and triggers events.\n\n"
                                    "In a sense, ",
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                              TextSpan(
                                text:
                                    "Stateless Widgets are consumers of the context",
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
                                    ". This is why they are called 'State-less', because they lack a context "
                                    "which the user can modify; they only consume a parent's context and display information accordingly.\n\n"
                                    "And now regarding ",
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                              TextSpan(
                                text:
                                    "Stateful Widgets, they are basically the editors of the Context. ",
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
                                    "They provide the user the capabilities of altering the context in real time and your job is to make the UI respond to such changes, "
                                    "displaying the correct information and Widgets to said user.",
                                style: Theme.of(context).textTheme.bodyText1,
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
                      'Visualized Example',
                      style: Theme.of(context).textTheme.headline1,
                    ),
                    const SizedBox(
                      height: spacing,
                    ),
                    const ParentBoxContext(),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: spacing * 2),
                      child: Divider(
                        color: Colors.blueGrey,
                        thickness: 2,
                      ),
                    ),
                    Text(
                      'Optimization',
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
                            text: 'SetState Function: ',
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
                                    "This is the main function used in Stateful Widgets. It is primarily used to update the UI when a change has been triggered and "
                                    "the UI has to reflect the modifications. However, there is a drawback with this: when you call setState(), the Stateful Widget "
                                    "and its children will rebuild to show the changes.\n"
                                    "This small detail impacts the app's performance. For example, if you are building a complex app and a Stateful Widget has a large "
                                    "amount of children but a few of them actually need an update, by calling setState() you will force every widget to rebuild themselves "
                                    "in order to reflect the changes whether they need an update or not.",
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
                            text: 'Best Practice: ',
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
                                    "With the big performance issue behind Stateful, the best practice is to use it in places where you actually need it. Don't abuse it by placing "
                                    "it at the root of the application just 'because yes' or you will end up with performance issues. Only use it when you need it and place it where "
                                    "it is needed.",
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

class ParentBoxContext extends StatefulWidget {
  final double borderRadius;
  const ParentBoxContext({this.borderRadius = 12.0, Key? key})
      : super(key: key);

  @override
  ParentBoxContextState createState() => ParentBoxContextState();
}

class ParentBoxContextState extends State<ParentBoxContext> {
  var generalCounter = 0;
  static const double spacing = 8.0;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            width: 5,
            color: Theme.of(context).primaryColorDark,
          ),
          borderRadius: BorderRadius.all(Radius.circular(widget.borderRadius)),
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius:
                BorderRadius.all(Radius.circular(widget.borderRadius)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(spacing),
            child: Column(
              children: [
                Text(
                  'Parent Context',
                  style: Theme.of(context).textTheme.headline1,
                ),
                const SizedBox(
                  height: spacing,
                ),
                RichText(
                  text: TextSpan(
                    text: 'General Counter: ',
                    style: TextStyle(
                        fontFamily:
                            Theme.of(context).textTheme.subtitle1!.fontFamily,
                        fontSize:
                            Theme.of(context).textTheme.subtitle1!.fontSize,
                        fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(
                        text: "$generalCounter",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: spacing,
                ),
                ChildBoxContext(
                  parentCounter: this.generalCounter,
                ),
                const SizedBox(
                  height: spacing,
                ),
                ChildBoxContext(
                  parentCounter: this.generalCounter,
                ),
                const SizedBox(
                  height: spacing,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      child: Text(
                        '- General Counter',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      onPressed: () => setState(() => this.generalCounter -=
                          this.generalCounter > 0 ? 1 : 0),
                    ),
                    ElevatedButton(
                      child: Text(
                        '+ General Counter',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      onPressed: () => setState(() => this.generalCounter += 1),
                    ),
                  ],
                ),
                const SizedBox(
                  height: spacing,
                ),
                ElevatedButton(
                  child: Text(
                    'Update General Counter',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  onPressed: () => setState(() => {}),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ChildBoxContext extends StatefulWidget {
  var parentCounter;
  final double borderRadius;

  ChildBoxContext(
      {required this.parentCounter, this.borderRadius = 12.0, Key? key})
      : super(key: key);

  @override
  ChildBoxContextState createState() => ChildBoxContextState();
}

class ChildBoxContextState extends State<ChildBoxContext> {
  var childrenCounter = 0;
  static const double spacing = 8.0;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            width: 5,
            color: Theme.of(context).primaryColorDark,
          ),
          borderRadius: BorderRadius.all(Radius.circular(widget.borderRadius)),
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius:
                BorderRadius.all(Radius.circular(widget.borderRadius)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(spacing),
            child: Column(
              children: [
                Text(
                  'Children Context',
                  style: Theme.of(context).textTheme.headline1,
                ),
                const SizedBox(
                  height: spacing,
                ),
                RichText(
                  text: TextSpan(
                    text: 'General Counter: ',
                    style: TextStyle(
                        fontFamily:
                            Theme.of(context).textTheme.subtitle1!.fontFamily,
                        fontSize:
                            Theme.of(context).textTheme.subtitle1!.fontSize,
                        fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(
                        text: "${widget.parentCounter}",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: spacing,
                ),
                RichText(
                  text: TextSpan(
                    text: 'Child Counter: ',
                    style: TextStyle(
                        fontFamily:
                            Theme.of(context).textTheme.subtitle1!.fontFamily,
                        fontSize:
                            Theme.of(context).textTheme.subtitle1!.fontSize,
                        fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(
                        text: "$childrenCounter",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: spacing,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      child: Text(
                        '- General Counter',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      onPressed: () => setState(() => widget.parentCounter -=
                          widget.parentCounter > 0 ? 1 : 0),
                    ),
                    ElevatedButton(
                      child: Text(
                        '+ General Counter',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      onPressed: () =>
                          setState(() => widget.parentCounter += 1),
                    ),
                  ],
                ),
                const SizedBox(
                  height: spacing,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      child: Text(
                        '- Child Counter',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      onPressed: () => setState(() => this.childrenCounter -=
                          this.childrenCounter > 0 ? 1 : 0),
                    ),
                    ElevatedButton(
                      child: Text(
                        '+ Child Counter',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      onPressed: () =>
                          setState(() => this.childrenCounter += 1),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
