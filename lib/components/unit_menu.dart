// Basic Imports
import 'package:flutter/material.dart';

// Extra Widgets
import 'package:expandable/expandable.dart';
import 'package:flutter_course_demo/models/course/unit_item.dart';

class UnitMenu extends StatelessWidget {
  static const double spacing = 8.0;
  final String title;
  final List<UnitItem> items;

  const UnitMenu({required this.title, required this.items, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ExpandablePanel(
        header: Padding(
          padding: const EdgeInsets.only(top: spacing),
          child: Text(
            "${this.title}\n",
            style: TextStyle(
              fontFamily: Theme.of(context).textTheme.subtitle1!.fontFamily,
              fontSize: Theme.of(context).textTheme.subtitle1!.fontSize,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        collapsed: const SizedBox(),
        expanded: Padding(
          padding: const EdgeInsets.all(spacing),
          child: Column(
            children: items
                .map((unitItem) => Padding(
                      padding:
                          const EdgeInsets.symmetric(vertical: spacing / 2),
                      child: Card(
                        child: ListTile(
                          leading: Icon(unitItem.icon),
                          title: Text(
                            unitItem.title,
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                          onTap: () => Navigator.of(context)
                              .pushNamed('/${unitItem.routeName}'),
                        ),
                      ),
                    ))
                .toList(),
          ),
        ),
      ),
    );
  }
}
