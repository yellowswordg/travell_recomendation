import 'package:flutter/material.dart';

class IconTile {
  final IconData icon;
  final String lable;
  final bool isSelected;

  IconTile({bool isSelected, this.icon, this.lable}) : this.isSelected = false;

  IconTile copyWith(IconData icon, String lable, bool isSelected) {
    return IconTile(
        icon: icon ?? this.icon,
        lable: lable ?? this.lable,
        isSelected: isSelected ?? this.isSelected);
  }
}
