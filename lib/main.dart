// Basic Imports
import 'package:flutter/material.dart';
import 'package:flutter_course_demo/models/unit_two/shop_item.dart';
import 'package:flutter_course_demo/unit_three/deployment_screen.dart';
import 'package:flutter_course_demo/unit_two/gestures_demo.dart';
import 'package:flutter_course_demo/unit_two/testing_screen.dart';

// Screens
import 'main_screen.dart';

// Unit One Screens
import 'package:flutter_course_demo/unit_one/widgets_lore.dart';
import 'package:flutter_course_demo/unit_one/stateless_vs_stateful.dart';
import 'package:flutter_course_demo/unit_one/state_management.dart';
import 'package:flutter_course_demo/unit_one/package_manager.dart';
import 'package:flutter_course_demo/unit_one/example.dart';

// Unit Two Screens
import 'package:flutter_course_demo/unit_two/form.dart';
import 'package:flutter_course_demo/unit_one/assets_inclusion.dart';
import 'package:flutter_course_demo/unit_two/routing.dart';
import 'package:flutter_course_demo/unit_two/example/eshop.dart';
import 'package:flutter_course_demo/unit_two/example/cart_shop.dart';

// Unit Three Screens
import 'package:flutter_course_demo/unit_three/basic_network.dart';
import 'package:flutter_course_demo/unit_two/theming.dart';
import 'package:flutter_course_demo/unit_three/futures.dart';
import 'package:flutter_course_demo/unit_three/example.dart';

// Extra Widgets
import 'package:page_transition/page_transition.dart';
import 'package:google_fonts/google_fonts.dart';

// Main Function that calls our App
void main() {
  runApp(const MyApp());
}

// For Color Swatch Properties
MaterialColor createMaterialColor(Color color) {
  List strengths = <double>[.05];
  Map<int, Color> swatch = <int, Color>{};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  strengths.forEach((strength) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  });
  return MaterialColor(color.value, swatch);
}

// The Root Widget of our App
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  /// UNIT THREE: Some variables that contain information of the design of some Widgets in our app
  final double borderRadius = 12.0, cardElevation = 8.0;

  /// UNIT THREE: Some variables that contain information of the App's color
  static const int primaryColor = 0xFF40c4ff,
      primaryColorLight = 0xFF82f7ff,
      primaryColorDark = 0xFF0094cc;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Course Demo',

      /// UNIT THREE: UI Theming & Design
      theme: ThemeData(
        /// Colors: The application is based on Material Color Design, that means there are
        /// three main colors and one optional:
        /// - Primary Color (main color)
        /// - Primary Light Color (main color but lighter)
        /// - Primary Dark Color (main color but darkened)
        /// - Accent Color (also known as the Secondary Color, it is used to contrast certain elements)
        ///
        /// To check how the Primary Colors are selected and are used, use the following tool called Material Color:
        /// https://material.io/resources/color/#!/?view.left=0&view.right=0
        ///
        /// To check how to select the accent color, use the following tool called Color harmony
        /// https://www.sessions.edu/color-calculator/
        ///
        /// You can use the Material Color tool to also check how the accent color is used along with your Primary Color

        // Color UI
        primarySwatch: createMaterialColor(const Color(primaryColor)),
        primaryColor: const Color(primaryColor),
        primaryColorLight: const Color(primaryColorLight),
        primaryColorDark: const Color(primaryColorDark),

        /// Fonts: The application allows you to have multiple fonts for different uses. The most common use cases are
        /// Headers, Subtitles and Body Texts.
        ///
        /// There is actually a way to combine fonts to make your app look even better, use the following tool
        /// called Font Generator to aid you in that task:
        /// https://fontjoy.com
        ///
        /// All the fonts used in the tool described above can be found in the package: "google_fonts"

        // Text Style UI
        textTheme: TextTheme(
          headline1: GoogleFonts.titilliumWeb(
              textStyle: const TextStyle(
            color: Color(0xFF2b2b2b),
            fontSize: 30,
            fontWeight: FontWeight.bold,
          )),
          headline4: GoogleFonts.titilliumWeb(
              textStyle: const TextStyle(
            color: Color(0xFFebebeb),
            fontSize: 30,
            fontWeight: FontWeight.bold,
          )),
          subtitle1: GoogleFonts.overlock(
              textStyle: const TextStyle(
            color: Color(0xFF2b2b2b),
            fontSize: 22,
          )),
          subtitle2: GoogleFonts.overlock(
              textStyle: const TextStyle(
            color: Color(0xFFebebeb),
            fontSize: 22,
          )),
          bodyText1: GoogleFonts.imprima(
              textStyle: const TextStyle(
            color: Color(0xFF2b2b2b),
            fontSize: 18,
          )),
          bodyText2: GoogleFonts.imprima(
              textStyle: const TextStyle(
            color: Color(0xFFebebeb),
            fontSize: 18,
          )),
        ),

        /// Theming: The principle of DRY is powerful in Flutter. Before reaching UNIT III, you will notice
        /// that a lot code blocks tend to repeat while programming your App in Flutter.
        /// DRY stands for Don't Repeat Yourself, which is a core principle in app design. The fundamental
        /// goal of DRY is to generate good programming habits where you avoid creating a lot of
        /// boilerplate code and avoid copy pasting everywhere.
        /// The benefits? App scalability and debugging become easier in the long run.
        ///
        /// Flutter is filled with a lot of Widgets that repeat themselves everywhere, so the DRY principle is key
        /// for making a good app.
        /// Flutter helps us with the DRY principle by giving us a space where you can declare the general
        /// themes of specific widgets. This means, every time you use a Widget, it will use the theme
        /// you defined here.

        // Card Theme
        cardTheme: CardTheme(
          elevation: this.cardElevation,
          shadowColor: const Color(0xFF696969),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(this.borderRadius),
          ),
        ),

        // List Tile Theme
        listTileTheme: ListTileThemeData(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(this.borderRadius),
          ),
        ),

        // All Inputs Themes
        inputDecorationTheme: InputDecorationTheme(
          errorStyle: GoogleFonts.imprima(
              textStyle: const TextStyle(
            color: Color(0xFFde0b0b),
          )),
          labelStyle: GoogleFonts.imprima(
              textStyle: const TextStyle(
            color: Color(primaryColor),
          )),
          fillColor: Colors.white,
          enabledBorder: OutlineInputBorder(
            borderSide:
                const BorderSide(color: Color(primaryColor), width: 0.0),
            borderRadius: BorderRadius.circular(16),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide:
                const BorderSide(color: Color(primaryColorDark), width: 2.0),
            borderRadius: BorderRadius.circular(12),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xFFde0b0b), width: 0.0),
            borderRadius: BorderRadius.circular(16),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xFFa30000), width: 2.0),
            borderRadius: BorderRadius.circular(12),
          ),
        ),

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: const Color(primaryColor),
            onPrimary: const Color(primaryColorLight),
            shadowColor: const Color(primaryColorDark),
            textStyle: GoogleFonts.rakkas(
              textStyle: const TextStyle(
                color: Color(0xFF000000),
                fontSize: 18,
                fontWeight: FontWeight.normal,
              ),
              color: const Color(0xFF000000),
            ),
          ),
        ),
      ),

      /// UNIT II: Route Management
      ///
      /// For more advanced apps, route management becomes critical. The main points you have to understand are:
      /// - There is always a default or initial route of your app, it normally tends to be the root "/".
      ///   This is the main and first route that your app will always visit when it boots up.
      ///
      /// - There is a Route Map that is a structure used to get the correct screen based on the route names.
      ///   You will normally use the route map for screens that don't need arguments or are considered static.
      ///   Have in mind, if for some reason you tell your app to go to a route which isn't defined in the Route Map,
      ///   then it will crash and throw an Error. This is the first structure your app will consult before performing
      ///   transitioning to any screen.
      ///
      /// - There is a OnGenerateRoute feature. It basically serves the function of a Route Map but with more
      ///   functionalities. In this section, you can manage the arguments you can pass to your screens and handle
      ///   unidentified routes. You can also perform Screen Transition Animations.
      ///   This is the second structure your app will consult if the basic Route Map doesn't have defined a
      ///   specific route.
      ///   There is also onGenerateInitialRoute and onUnknownRoute. Feel free to explore the different options

      // Initial or Main Route. It is the root of your app
      initialRoute: "/",

      // Map Route: "routeName": (context) => Screen()
      routes: {
        "/": (context) => const MainScreen(),
      },

      // OnGenerateRoute
      onGenerateRoute: (settings) {
        switch (settings.name) {
          // Unit One Screens
          case "/i-widget":
            return PageTransition(
              child: const WidgetsLore(),
              type: PageTransitionType.fade,
              settings: settings,
              duration: const Duration(seconds: 1),
            );
          case "/i-lessful":
            return PageTransition(
              child: const LessFulDemo(),
              type: PageTransitionType.fade,
              settings: settings,
              duration: const Duration(seconds: 1),
            );
          case "/i-statemanagement":
            return PageTransition(
              child: const StateManagementDemo(),
              type: PageTransitionType.fade,
              settings: settings,
              duration: const Duration(seconds: 1),
            );
          case "/i-packagemanager":
            return PageTransition(
              child: const PackageManagerDemo(),
              type: PageTransitionType.fade,
              settings: settings,
              duration: const Duration(seconds: 1),
            );
          case "/i-assets":
            return PageTransition(
              child: const AssetsInclusion(),
              type: PageTransitionType.fade,
              settings: settings,
              duration: const Duration(seconds: 1),
            );
          case "/i-example":
            return PageTransition(
              child: const UnitOneExample(),
              type: PageTransitionType.fade,
              settings: settings,
              duration: const Duration(seconds: 1),
            );

          // Unit Two Screens
          case "/ii-form":
            return PageTransition(
              child: const FormScreen(),
              type: PageTransitionType.fade,
              settings: settings,
              duration: const Duration(seconds: 1),
            );
          case "/ii-gestures":
            return PageTransition(
              child: const GesturesScreen(),
              type: PageTransitionType.fade,
              settings: settings,
              duration: const Duration(seconds: 1),
            );
          case "/ii-theming":
            return PageTransition(
              child: const ThemingScreen(),
              type: PageTransitionType.fade,
              settings: settings,
              duration: const Duration(seconds: 1),
            );
          case "/ii-route":
            return PageTransition(
              child: const RouteManagement(),
              type: PageTransitionType.fade,
              settings: settings,
              duration: const Duration(seconds: 1),
            );
          case "/ii-testing":
            return PageTransition(
              child: const TestingScreen(),
              type: PageTransitionType.fade,
              settings: settings,
              duration: const Duration(seconds: 1),
            );
          case "/ii-example-eshop":
            return PageTransition(
              child: EShop(),
              type: PageTransitionType.fade,
              settings: settings,
              duration: const Duration(seconds: 1),
            );
          case "/ii-example-eshop-cart":
            return PageTransition(
              child: EShopCart(
                cart: settings.arguments as List<ListItem>,
              ),
              type: PageTransitionType.fade,
              settings: settings,
              duration: const Duration(seconds: 1),
            );

          // Unit Three Screens
          case "/iii-deployment":
            return PageTransition(
              child: const DeploymentScreen(),
              type: PageTransitionType.fade,
              settings: settings,
              duration: const Duration(seconds: 1),
            );
          case "/iii-network":
            return PageTransition(
              child: const BasicNetworkScreen(),
              type: PageTransitionType.fade,
              settings: settings,
              duration: const Duration(seconds: 1),
            );
          case "/iii-future":
            return PageTransition(
              child: const FutureScreen(),
              type: PageTransitionType.fade,
              settings: settings,
              duration: const Duration(seconds: 1),
            );
          case "/iii-example-number-trivia":
            return PageTransition(
              child: const UnitThreeExample(),
              type: PageTransitionType.fade,
              settings: settings,
              duration: const Duration(seconds: 1),
            );
          default:
            throw Exception('Route not implemented');
        }
      },
    );
  }
}
