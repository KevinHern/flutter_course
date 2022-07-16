import 'package:flutter/material.dart';

class UnitOneExample extends StatelessWidget {
  static const double spacing = 8.0;
  const UnitOneExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Unit One: Example',
          style: Theme.of(context).textTheme.headline1,
        ),
        leading: IconButton(
          onPressed: () =>
              Navigator.of(context).canPop() ? Navigator.of(context).pop() : {},
          icon: const Icon(Icons.arrow_back_rounded),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  'Parent Context',
                  style: Theme.of(context).textTheme.headline1,
                ),
                const SizedBox(
                  height: spacing,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.55,
                  width: 600,
                  child: const Card(
                    child: SimpleList(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SimpleList extends StatefulWidget {
  const SimpleList({Key? key}) : super(key: key);

  @override
  SimpleListState createState() => SimpleListState();
}

class SimpleListState extends State<SimpleList> {
  List<bool> favorite = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];
  List<String> elements = [
    "Red Pringles",
    "Orange Pringles",
    "Green Pringles",
    "Blue Pringles",
    "Purple Pringles",
    "Yellow Pringles",
    "Yellow Lays",
    "Orange Lays",
    "Green Lays",
    "Purple Lays",
    "Black Lays",
    "Orange Doritos",
    "Green Doritos",
    "Red Doritos",
    "Purple Doritos",
    "Blue Doritos",
  ];
  static const double spacing = 8.0;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(
          horizontal: spacing, vertical: spacing / 2),
      itemCount: this.elements.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: spacing / 2),
          child: Card(
            child: ListTile(
              leading: const Icon(Icons.fastfood),
              title: Text(
                this.elements[index],
                style: Theme.of(context).textTheme.bodyText1,
              ),
              trailing: IconButton(
                icon: this.favorite[index]
                    ? const Icon(
                        Icons.favorite,
                        color: Colors.red,
                      )
                    : const Icon(
                        Icons.favorite_border,
                        color: Colors.red,
                      ),
                onPressed: () => setState(
                  () => this.favorite[index] = !this.favorite[index],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
