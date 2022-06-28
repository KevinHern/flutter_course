// Basic Imports
import 'dart:math';

import 'package:flutter/material.dart';

// Extra Widgets
import '../../components/screen_components.dart';
import '../../models/unit_two/shop_item.dart';

class EShopCart extends StatelessWidget {
  static const double spacing = 8.0;
  final List<ListItem> cart;
  const EShopCart({required this.cart, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenScaffold(
      screenTitle: "Unit II: E-Shop Cart",
      child: Column(
        children: [
          Text(
            'Your Cart',
            style: Theme.of(context).textTheme.headline1,
          ),
          const SizedBox(
            height: spacing * 2,
          ),
          Card(
            child: SizedBox(
              height: 650,
              child: CartItems(
                cart: this.cart,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CartItems extends StatefulWidget {
  final List<ListItem> cart;
  const CartItems({required this.cart, Key? key}) : super(key: key);

  @override
  CartItemsState createState() => CartItemsState();
}

class CartItemsState extends State<CartItems> {
  static const double spacing = 8.0;
  final List<IconData> icons = [Icons.emoji_food_beverage, Icons.fastfood];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(
          horizontal: spacing, vertical: spacing / 2),
      itemCount: widget.cart.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: spacing / 2),
          child: ListTile(
            leading: Icon(icons[Random().nextInt(2)]),
            title: Text(
              widget.cart[index].name,
              style: Theme.of(context).textTheme.subtitle1,
            ),
            trailing: ElevatedButton(
              child: const Icon(Icons.remove_circle),
              onPressed: () => setState(() {
                widget.cart.removeAt(index);
              }),
            ),
          ),
        );
      },
    );
  }
}
