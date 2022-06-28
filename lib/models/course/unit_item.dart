import 'package:flutter/material.dart';

class UnitItem {
  final String _title, _routeName;
  final IconData _iconData;

  UnitItem(
      {required String title,
      required String routeName,
      required IconData iconData})
      : this._title = title,
        this._routeName = routeName,
        this._iconData = iconData;

  // Getters
  String get title => this._title;
  String get routeName => this._routeName;
  IconData get icon => this._iconData;
}
