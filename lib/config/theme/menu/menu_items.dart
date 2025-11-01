import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem(
      {required this.title,
      required this.subTitle,
      required this.icon,
      required this.link});
}

const appMenuItems = <MenuItem>[
  MenuItem(
      title: 'Botones',
      subTitle: 'Botones en flutter',
      icon: Icons.smart_button_outlined,
      link: '/buttons'),
  MenuItem(
    title: 'Tarjetas',
    subTitle: 'Un contenedor utilizado',
    icon: Icons.smart_button_outlined,
    link: '/cards',
  ),
];
