// Basic Imports
import 'package:flutter/material.dart';

// Extra Widgets
import 'package:expandable/expandable.dart';

class UnitOneMenu extends StatelessWidget {
  static const double spacing = 8.0;
  const UnitOneMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ExpandablePanel(
        header: Padding(
          padding: const EdgeInsets.only(top: spacing),
          child: Text(
            "Unit One Menu\n",
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
            children: [
              Card(
                child: ListTile(
                  leading: const Icon(Icons.account_tree),
                  title: Text(
                    "Widgets",
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  onTap: () => Navigator.of(context).pushNamed('/i-widget'),
                ),
              ),
              const SizedBox(
                height: spacing,
              ),
              Card(
                child: ListTile(
                  leading: const Icon(Icons.dashboard),
                  title: Text(
                    "Stateless vs Stateful",
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  onTap: () => Navigator.of(context).pushNamed('/i-lessful'),
                ),
              ),
              const SizedBox(
                height: spacing,
              ),
              Card(
                child: ListTile(
                  leading: const Icon(Icons.list_alt),
                  title: Text(
                    "State Management",
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  onTap: () =>
                      Navigator.of(context).pushNamed('/i-statemanagement'),
                ),
              ),
              const SizedBox(
                height: spacing,
              ),
              Card(
                child: ListTile(
                  leading: const Icon(Icons.card_travel),
                  title: Text(
                    "Package Manager",
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  onTap: () =>
                      Navigator.of(context).pushNamed('/i-packagemanager'),
                ),
              ),
              const SizedBox(
                height: spacing,
              ),
              Card(
                child: ListTile(
                  leading: const Icon(Icons.developer_board),
                  title: Text(
                    "Example",
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  onTap: () => Navigator.of(context).pushNamed('/i-example'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
