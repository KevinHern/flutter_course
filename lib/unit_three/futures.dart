import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_course_demo/components/screen_components.dart';
import 'package:flutter_course_demo/components/text_card.dart';
import 'package:sn_progress_dialog/progress_dialog.dart';

class FutureScreen extends StatelessWidget {
  static const double spacing = 8.0;
  static const String progressDialogLink =
          "https://pub.dev/packages/sn_progress_dialog",
      clipboardMessage = "Link copied to your clipboard!";
  const FutureScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenScaffold(
      screenTitle: "Unit III: Future Widgets",
      child: Column(
        children: [
          Text(
            'Builder of Promises',
            style: Theme.of(context).textTheme.headline1,
          ),
          const SizedBox(
            height: spacing,
          ),
          TextCard(
            text: '',
            textSpanList: [
              TextSpan(
                text:
                    "As we recall, there may be situations that you may need to use a Future to retrieve something over the internet (say, by a GET or POST request) but "
                    "you don't know how long it will take. And it so happens that your application depends on that result in order "
                    "to show something to the user.\n\n",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              TextSpan(
                text:
                    "But how can I show something to the user when its not even ready?\n",
                style: TextStyle(
                  fontFamily: Theme.of(context).textTheme.bodyText1!.fontFamily,
                  fontSize: Theme.of(context).textTheme.bodyText1!.fontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text:
                    "Simply, you can't. You have to wait until the Future completes and returns an interpretable result. However, while the Future's "
                    "state is still 'unfinished', you can show something as a placeholder to use, like a loader or a message that tells them 'it is in progress, "
                    "please be patience'.\n"
                    "And, as you guessed, there is already a Widget that can accomplish that; show a place holder "
                    "while waiting for a Future to complete and then show a result once its done. This Widget is called ",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              TextSpan(
                text: "FutureBuilder",
                style: TextStyle(
                  fontFamily: Theme.of(context).textTheme.bodyText1!.fontFamily,
                  fontSize: Theme.of(context).textTheme.bodyText1!.fontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text:
                    ". This Widget allows you to have more control over what is shown to the user when a Future is in play. But, I must remind you "
                    "that FutureWidget is, in itself, a Widget. This is used when there are widgets that depend on a Future (and potentially "
                    "its processing). You can't use this when someone presses a button and you want to display a dialog with a loader or a message.\n\n",
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ],
          ),
          const SizedBox(
            height: spacing,
          ),
          Text(
            'Future Builder Demo',
            style: Theme.of(context).textTheme.headline1,
          ),
          const FutureBuilderDemo(),
          const ScreenDivider(),
          Text(
            'Progress Dialog',
            style: Theme.of(context).textTheme.headline1,
          ),
          const SizedBox(
            height: spacing,
          ),
          TextCard(
            text: '',
            textSpanList: [
              TextSpan(
                text:
                    "To solve that problem, there is yet another useful package that gves you the capabilities to display a friendly Dialog with good looking "
                    "icons. This package is called ",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              TextSpan(
                text: "sn_progress_dialog",
                style: TextStyle(
                  fontFamily: Theme.of(context).textTheme.bodyText1!.fontFamily,
                  fontSize: Theme.of(context).textTheme.bodyText1!.fontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text:
                    ".\n\nVisit the following to check more of its uses and customizable options:\n",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              TextSpan(
                text: "$progressDialogLink\n\n",
                style: TextStyle(
                  fontFamily: Theme.of(context).textTheme.bodyText1!.fontFamily,
                  fontSize: Theme.of(context).textTheme.bodyText1!.fontSize,
                  fontStyle: FontStyle.italic,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () => Clipboard.setData(
                              const ClipboardData(text: progressDialogLink))
                          .then((_) {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                                content: Text(
                          clipboardMessage,
                        )));
                      }),
              ),
            ],
          ),
          const SizedBox(
            height: spacing * 2,
          ),
          ElevatedButton(
            child: Text(
              "Click me!",
              style: Theme.of(context).textTheme.subtitle1,
            ),
            onPressed: () async {
              final pd = ProgressDialog(context: context);

              pd.show(
                max: 1,
                msg: "Waiting for some future...",
              );

              await Future.delayed(const Duration(seconds: 2));

              if (pd.isOpen()) {
                pd.close();
              }
            },
          ),
        ],
      ),
    );
  }
}

class FutureBuilderDemo extends StatefulWidget {
  const FutureBuilderDemo({Key? key}) : super(key: key);

  @override
  FutureBuilderDemoState createState() => FutureBuilderDemoState();
}

class FutureBuilderDemoState extends State<FutureBuilderDemo> {
  static const double spacing = 8.0;

  var showLogo = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          child: SizedBox(
            width: 200,
            child: ListTile(
              title: Text(
                "Show",
                style: Theme.of(context).textTheme.subtitle1,
              ),
              trailing: Switch(
                value: showLogo,
                onChanged: (value) => setState(
                  () => showLogo = value,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: spacing * 1.5,
        ),
        showLogo
            ? Card(
                child: FutureBuilder<bool>(
                  future: Future<bool>(() async {
                    await Future.delayed(const Duration(seconds: 3));
                    return true;
                  }),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Padding(
                        padding: EdgeInsets.all(spacing * 5),
                        child: CircularProgressIndicator(),
                      );
                    } else if (snapshot.connectionState ==
                        ConnectionState.done) {
                      if (snapshot.hasError) {
                        print(snapshot.error);
                        return Container(
                          color: Colors.red,
                        );
                      } else {
                        return const FlutterLogo(
                          size: 250,
                        );
                      }
                    } else {
                      throw Exception("An error ocurred with the connection");
                    }
                  },
                ),
              )
            : const SizedBox(),
      ],
    );
  }
}
