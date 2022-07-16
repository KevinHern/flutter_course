// Basic Imports
import 'package:flutter/material.dart';

// Extra Widgets
import 'package:flutter_course_demo/models/course/unit_item.dart';
import '../components/unit_menu.dart';

class UnitThreeMenu extends StatelessWidget {
  static const double spacing = 8.0;
  const UnitThreeMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UnitMenu(
      title: "Unit Three Menu",
      items: [
        UnitItem(
            title: "App Deployment",
            routeName: "iii-deployment",
            iconData: Icons.send),
        UnitItem(
            title: "Basic Networking",
            routeName: "iii-network",
            iconData: Icons.wifi),
        UnitItem(
            title: "Futures",
            routeName: "iii-future",
            iconData: Icons.compare_arrows),
        UnitItem(
            title: "Example",
            routeName: "iii-example-number-trivia",
            iconData: Icons.developer_board),
      ],
    );
  }
}
