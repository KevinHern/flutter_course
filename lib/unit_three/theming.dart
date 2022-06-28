// Basic Imports
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Extra Widgets
import '../components/screen_components.dart';
import '../components/text_card.dart';

class ThemingScreen extends StatelessWidget {
  static const double spacing = 8.0;
  static const String materialColorLink =
          "https://material.io/resources/color/#!/",
      colorHarmonyLink = "https://www.sessions.edu/color-calculator/",
      fontCombinator = "https://fontjoy.com",
      clipboardMessage = "Link copied to your clipboard!";
  const ThemingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenScaffold(
      screenTitle: "Unit III: Theming",
      child: Column(
        children: [
          Text(
            'User Interface',

            /// Our usage of our Headline font! here we use the Theme.of(context)
            /// to access the Text Theme we have defined in our 'main.dart' file.
            /// You will find a good amount of calls to the Theme.of(context) instruction
            /// as you keep exploring other files.
            ///
            /// I encourage you to do it, so you learn more!
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
                    "'Flutter is an open source framework by Google for building beautiful, natively compiled, multi-platform applications from a single codebase'\n\n",
                style: TextStyle(
                    fontFamily:
                        Theme.of(context).textTheme.bodyText1!.fontFamily,
                    fontSize: Theme.of(context).textTheme.bodyText1!.fontSize,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
              TextSpan(
                text:
                    "Flutter is an excellent Framework to build beautiful applications that run with a performance as comparable as natively compiled applications.\n"
                    "As you have seen in this website, the UI utilizes basic Theming concepts; it isn't the great but it shows the usage of colors, fonts and "
                    "friendly Widget designs that please the eye of the user.\n"
                    "But the greatest thing of all? It is very easy to setup the designs of Widgets, colors and even fonts!\n\n"
                    "Flutter utilizes Design Schemes (which are a group of techniques that utilize colors, fonts and designs in certain ways) as its foundation for UI "
                    "that developers create. Specifically, Flutter has the flexibility of supporting 2 well known design schemes: Material Design (used in Android) and "
                    "Cupertino (used in iOS).\n\n"
                    "If you check the code of the unit one, you will notice that declaring certain designs in some widgets is very repetitive and tedious - and even not scalable!\n"
                    "The creators of Flutter knew that 'boilerplate' code is bound to happen given how Flutter is designed; and UI code is notably one of the main "
                    "contributors to the generation of boilerplate code.\n"
                    "Their solution was to create the support for Design Schemes. You only need to define a Widget's UI details once and call it a day; you don't have to copy and paste "
                    "all the code again in order to observe the same results.\n\n"
                    "This solution is a massive improvement in both productivity and flexibility!\n"
                    "You can also define the fonts for different purposes (headlines, subtitles and body text) and declare the app's primary and accent colors. The best thing? "
                    "Flutter recognizes these fonts and colors settings and applies them to certain Widget's default UI details (for example, if you declare a primary color, the "
                    "AppBar Widget will have that color as its default color).\n\n"
                    "Pretty useful, eh? Now, I'll give you some UI tips to enhance your app's visual looks.\n\n",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              TextSpan(
                text:
                    "NOTE: The next UI design tips are based of from Material Design's Scheme.",
                style: TextStyle(
                    fontFamily:
                        Theme.of(context).textTheme.bodyText1!.fontFamily,
                    fontSize:
                        Theme.of(context).textTheme.bodyText1!.fontSize! * 0.80,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
            ],
          ),
          const ScreenDivider(),
          Text(
            'Colors',
            style: Theme.of(context).textTheme.headline1,
          ),
          const SizedBox(
            height: spacing,
          ),
          TextCard(
            text: "An application has Primary and Accent Colors",
            textSpanList: [
              TextSpan(
                text:
                    ", but the last one is optional. Now, you may be thinking: 'But I am not a graphic designer or an artist to select the right colors for my app!'\n"
                    "It is a very common barrier between us programmers and developers. We lack that side of creativity. We know that Programmers that are also artists are "
                    "basically Unicorns - they don't exist!\n\n"
                    "But don't worry! There are tools out there that can help you lessen the effort you have to put to your app's UI, but first, let me explain the purpose of "
                    "the primary and accent colors.",
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ],
          ),
          const SizedBox(
            height: spacing,
          ),
          TextCard(
            text: 'Primary Colors',
            textSpanList: [
              TextSpan(
                text:
                    " are the main colors that identify your application. Material Design uses a Primary Color (the main color) and 2 of its variants: a Lighter and a Darker one.\n"
                    "The purpose of having 2 variants of the primary color is to make the app look more ",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              TextSpan(
                text: "appealing, dynamic, helpful and friendlier",
                style: TextStyle(
                  fontFamily: Theme.of(context).textTheme.bodyText1!.fontFamily,
                  fontSize: Theme.of(context).textTheme.bodyText1!.fontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text:
                    " to the user. Basically, you use these variants to accent certain UI elements (like buttons, icons, etc.) that can give the user some awareness that maybe a UI element "
                    "is important or it just simply contributes to the overall look of your app.\n\n",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              TextSpan(
                text: "The Accent Color",
                style: TextStyle(
                  fontFamily: Theme.of(context).textTheme.bodyText1!.fontFamily,
                  fontSize: Theme.of(context).textTheme.bodyText1!.fontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text:
                    ", as the name implies, is a color used to accent very important UI elements. These colors really stand out from the others that are impossible to ignore. "
                    "Because of that, they are great to guide the user to do something or execute an action.\n"
                    "This is called 'call-to-action' and accent colors are great for this purpose.",
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ],
          ),
          const SizedBox(
            height: spacing,
          ),
          TextCard(
            text:
                "How do I select the Primary and, potentially, the Accent Colors of my app?\n",
            textSpanList: [
              TextSpan(
                text:
                    "I'll give you some good starting advices. These still apply regardless of the complexity of the app's UI and are handy at any time. Plus, "
                    "these can be applied outside of Flutter too!\n\n"
                    "Here is my list:\n",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              TextSpan(
                text:
                    "- Select one color you think it fits to: your organization's theme or your app's theme or purpose: ",
                style: TextStyle(
                  fontFamily: Theme.of(context).textTheme.bodyText1!.fontFamily,
                  fontSize: Theme.of(context).textTheme.bodyText1!.fontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text:
                    "If your enterprise already has a defined logo with some theme, you can use those colors as reference. Or in case you are working as a freelancer and you "
                    "were not given specifications, you might read some Color Theory to have a good starting point. For example, the blue color is associated with calm, the "
                    "red color is associated with energy or passion and the green color is associated with nature.\n"
                    "If you are creating an application for exercise routines, you might consider red or another color that fits to the purpose.\n\n",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              TextSpan(
                text:
                    "- Discover the Light and Dark variants using existing tools: ",
                style: TextStyle(
                  fontFamily: Theme.of(context).textTheme.bodyText1!.fontFamily,
                  fontSize: Theme.of(context).textTheme.bodyText1!.fontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text:
                    "You don't have to do math or be a color prodigy to do this. There is an online tool that already calculates these variants for you.\n"
                    "Copy the following link (by clicking or tapping on it) and have fun exploring:\n",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              TextSpan(
                text: "$materialColorLink\n\n",
                style: TextStyle(
                  fontFamily: Theme.of(context).textTheme.bodyText1!.fontFamily,
                  fontSize: Theme.of(context).textTheme.bodyText1!.fontSize,
                  fontStyle: FontStyle.italic,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () => Clipboard.setData(
                              const ClipboardData(text: materialColorLink))
                          .then((_) {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                                content: Text(
                          clipboardMessage,
                        )));
                      }),
              ),
              TextSpan(
                text:
                    "- If you consider you need an Accent color, then use existing tools too: ",
                style: TextStyle(
                  fontFamily: Theme.of(context).textTheme.bodyText1!.fontFamily,
                  fontSize: Theme.of(context).textTheme.bodyText1!.fontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text:
                    "Same story as above. However, accent colors are determined by a rule called ",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              TextSpan(
                text: "Color Harmony",
                style: TextStyle(
                  fontFamily: Theme.of(context).textTheme.bodyText1!.fontFamily,
                  fontSize: Theme.of(context).textTheme.bodyText1!.fontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text:
                    ". There are many 'complementary methods' for determining the accent color based of your primary color. You might use "
                    "sometimes use Complementary, others Monochromatic, even experiment with Analogous or simply use another. It depends on you (or "
                    "your organization's graphic design department decision).\n"
                    "Copy the following link and enjoy exploring the accent colors:\n",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              TextSpan(
                text: colorHarmonyLink,
                style: TextStyle(
                  fontFamily: Theme.of(context).textTheme.bodyText1!.fontFamily,
                  fontSize: Theme.of(context).textTheme.bodyText1!.fontSize,
                  fontStyle: FontStyle.italic,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () => Clipboard.setData(
                              const ClipboardData(text: colorHarmonyLink))
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
          const ScreenDivider(),
          Text(
            'Fonts',
            style: Theme.of(context).textTheme.headline1,
          ),
          const SizedBox(
            height: spacing,
          ),
          TextCard(
            text: "Fonts are everything",
            textSpanList: [
              TextSpan(
                text: " in your application!\n"
                    "Every application has some text shown to the user. As we know, text is used to inform, to give insight or to help guide the user on how they "
                    "should maneuver in our application. There are a lot of applications that apply the concept of font combination, which is basically the practice "
                    "of utilizing 3 types of fonts: one for headlines or titles, one for subtitles and the last one for normal or body text.\n\n"
                    "Flutter also supports this practice, which is pretty neat!\n"
                    "Just like with colors, I'll give you some general advice to select your fonts:\n",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              TextSpan(
                text:
                    "- Use existing tools that already find and combine fonts for you: ",
                style: TextStyle(
                  fontFamily: Theme.of(context).textTheme.bodyText1!.fontFamily,
                  fontSize: Theme.of(context).textTheme.bodyText1!.fontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text:
                    "Work smarter, not harder. There is a wide variety of fonts you can select and there is a massive amount of combinations you can come up with. You "
                    "migth want to install the package ",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              TextSpan(
                text: "google_fonts",
                style: TextStyle(
                  fontFamily: Theme.of(context).textTheme.bodyText1!.fontFamily,
                  fontSize: Theme.of(context).textTheme.bodyText1!.fontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text:
                    " because it already contains most, if not all, the commercial fonts you can find today.\n"
                    "I'll give you the following link so you can choose the font combination you want for your application:\n",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              TextSpan(
                text: "$fontCombinator\n\n",
                style: TextStyle(
                  fontFamily: Theme.of(context).textTheme.bodyText1!.fontFamily,
                  fontSize: Theme.of(context).textTheme.bodyText1!.fontSize,
                  fontStyle: FontStyle.italic,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () => Clipboard.setData(
                              const ClipboardData(text: fontCombinator))
                          .then((_) {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                                content: Text(
                          clipboardMessage,
                        )));
                      }),
              ),
              TextSpan(
                text:
                    "- Select the Fonts that fit to your app's theme or purpose: ",
                style: TextStyle(
                  fontFamily: Theme.of(context).textTheme.bodyText1!.fontFamily,
                  fontSize: Theme.of(context).textTheme.bodyText1!.fontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text:
                    " Just a healthy reminder that different fonts give different feelings and some suit to certain themes; or you can rely on your organization's decision to select them.",
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ],
          ),
          const ScreenDivider(),
          Text(
            'MaterialApp',
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
                    "The MaterialApp Widget is the main widget that you will use to define your app's colors, app's fonts and Widgets' designs. It is the first Widget you "
                    "find in the ",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              TextSpan(
                text: "main.dart",
                style: TextStyle(
                  fontFamily: Theme.of(context).textTheme.bodyText1!.fontFamily,
                  fontSize: Theme.of(context).textTheme.bodyText1!.fontSize,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
              ),
              TextSpan(
                text:
                    " file; it is the root of your application because it contains that important UI information that defines the rest of the Widgets.\n\n",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              TextSpan(
                text:
                    "Now, there will be situations where you will need to explicitly retrieve the colors, fonts or certain Widget designs in some Widget. In that case, "
                    "use the instruction ",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              TextSpan(
                text: "Theme.of(context)",
                style: TextStyle(
                  fontFamily: Theme.of(context).textTheme.bodyText1!.fontFamily,
                  fontSize: Theme.of(context).textTheme.bodyText1!.fontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: " to retrieve and use the values of your interest.",
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ],
          ),
          const SizedBox(
            height: spacing * 2,
          ),
          const DetailsTextCard(
            implementationMessage:
                "the implementation and usage of the colors, fonts and Widget designs",
            fileName: "main.dart and theming.dart",
          ),
        ],
      ),
    );
  }
}
