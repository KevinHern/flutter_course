// Basic Imports
import 'package:flutter/material.dart';

// Extra Widgets
import 'package:expandable/expandable.dart';
import 'package:flutter_course_demo/models/course/unit_item.dart';
import '../components/unit_menu.dart';

class UnitTwoMenu extends StatelessWidget {
  static const double spacing = 8.0;
  const UnitTwoMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UnitMenu(
      title: "Unit Two Menu",
      items: [
        UnitItem(
            title: "Forms",
            routeName: "ii-form",
            iconData: Icons.view_list_outlined),
        UnitItem(
            title: "Assets", routeName: "utwoasset", iconData: Icons.image),
        UnitItem(
            title: "Route Management",
            routeName: "ii-route",
            iconData: Icons.navigation),
        UnitItem(
            title: "Example",
            routeName: "ii-example-eshop",
            iconData: Icons.developer_board),
      ],
    );

    // return Card(
    //   child: ExpandablePanel(
    //     header: Padding(
    //       padding: const EdgeInsets.only(top: spacing),
    //       child: Text(
    //         "Unit Two Menu\n",
    //         style: TextStyle(
    //           fontFamily: Theme.of(context).textTheme.subtitle1!.fontFamily,
    //           fontSize: Theme.of(context).textTheme.subtitle1!.fontSize,
    //           fontWeight: FontWeight.bold,
    //           color: Colors.black,
    //         ),
    //         textAlign: TextAlign.center,
    //       ),
    //     ),
    //     collapsed: const SizedBox(),
    //     expanded: Padding(
    //       padding: const EdgeInsets.all(spacing),
    //       child: Column(
    //         children: [
    //           Card(
    //             child: ListTile(
    //               leading: const Icon(Icons.view_list_outlined),
    //               title: Text(
    //                 "Forms",
    //                 style: Theme.of(context).textTheme.bodyText1,
    //               ),
    //               onTap: () => Navigator.of(context).pushNamed('/utwowidget'),
    //             ),
    //           ),
    //           const SizedBox(
    //             height: spacing,
    //           ),
    //           Card(
    //             child: ListTile(
    //               leading: const Icon(Icons.developer_board),
    //               title: Text(
    //                 "Example",
    //                 style: Theme.of(context).textTheme.bodyText1,
    //               ),
    //               onTap: () => Navigator.of(context).pushNamed('/utwoexample'),
    //             ),
    //           ),
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }
}
