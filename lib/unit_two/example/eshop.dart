// Basic imports
import 'package:flutter/material.dart';
import 'dart:math';

// Models
import 'package:flutter_course_demo/models/unit_two/shop_item.dart';

// Extra Widets
import 'package:flutter_course_demo/components/screen_components.dart';

class EShop extends StatelessWidget {
  static const double spacing = 8.0;
  final List<ListItem> cart = [];
  EShop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenScaffold(
      screenTitle: "Unit II: E-Shop",
      child: Column(
        children: [
          Text(
            'Item List',
            style: Theme.of(context).textTheme.headline1,
          ),
          const SizedBox(
            height: spacing,
          ),
          ItemsList(cart: this.cart),
        ],
      ),
    );
  }
}

class ItemsList extends StatefulWidget {
  final List<ListItem> cart;
  const ItemsList({required this.cart, Key? key}) : super(key: key);

  @override
  ItemsListState createState() => ItemsListState();
}

class ItemsListState extends State<ItemsList> {
  final List<ListItem> items = [
    ListItem(name: "Yellow Lays", category: "Food"),
    ListItem(name: "Green Lays", category: "Food"),
    ListItem(name: "Orange Lays", category: "Food"),
    ListItem(name: "Purple Lays", category: "Food"),
    ListItem(name: "Black Lays", category: "Food"),
    ListItem(name: "Red Pringles", category: "Food"),
    ListItem(name: "Green Pringles", category: "Food"),
    ListItem(name: "Orange Pringles", category: "Food"),
    ListItem(name: "Coca Cola", category: "Beverage"),
    ListItem(name: "Sprite", category: "Beverage"),
    ListItem(name: "Pepsi", category: "Beverage"),
    ListItem(name: "7-Up", category: "Beverage"),
    ListItem(name: "Grapete", category: "Beverage"),
    ListItem(name: "Mirinda", category: "Beverage"),
  ];
  final List<IconData> icons = [Icons.emoji_food_beverage, Icons.fastfood];
  static const double spacing = 8.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton.icon(
          icon: const Icon(Icons.shopping_cart),
          label: Text(
            "Shopping Cart",
            style: Theme.of(context).textTheme.subtitle1,
          ),
          onPressed: () => Navigator.pushNamed(
                  context, "/ii-example-eshop-cart",
                  arguments: widget.cart)
              .then((value) => setState(() {})),
        ),
        const SizedBox(
          height: spacing * 2,
        ),
        Card(
          child: SizedBox(
            height: 650,
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(
                  horizontal: spacing, vertical: spacing / 2),
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Visibility(
                  visible: !widget.cart.contains(items[index]),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: spacing / 2),
                    child: Card(
                      child: ListTile(
                        leading: Icon(icons[Random().nextInt(2)]),
                        title: Text(
                          items[index].name,
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                        trailing: ElevatedButton(
                          child: const Icon(Icons.add_shopping_cart),
                          onPressed: () => setState(
                            () => widget.cart.add(items[index]),
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
