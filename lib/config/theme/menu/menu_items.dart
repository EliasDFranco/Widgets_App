import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem(
      {required this.title,
      required this.subTitle,
      required this.link,
      required this.icon});
}

const appMenuItems = <MenuItem>[

  MenuItem(
    title: "Counter Screen (Riverpod Introduction)",
    subTitle: "First experience in riverpod",
    link: "/counter-river",
    icon: Icons.numbers,
  ),
  
  MenuItem(
      title: 'Botones',
      subTitle: 'Varios botones en Flutter',
      link: '/buttons',
      icon: Icons.smart_button_outlined),
  MenuItem(
      title: 'Tarjetas',
      subTitle: 'Un contenedor estilizado',
      link: '/cards',
      icon: Icons.credit_card),
  MenuItem(
    title: 'Progress Indicator',
    subTitle: 'Generales y controladores',
    link: '/progress',
    icon: Icons.refresh_rounded,
  ),
  MenuItem(
      title: 'Snackbars y dialogos',
      subTitle: 'Indicadores de pantalla',
      link: '/snackbars',
      icon: Icons.info_outline),
  MenuItem(
      title: 'Imagenes con acciones',
      subTitle: 'Desvanecimiento y rotaciones',
      link: '/filtered',
      icon: Icons.image_rounded),
  MenuItem(
      title: 'Animated Container',
      subTitle: 'Stateful Widget con animated container',
      link: '/animated',
      icon: Icons.check_box_outline_blank),
  MenuItem(
      title: 'UI Controls + Tiles',
      subTitle: 'Una serie de controles de flutter',
      link: '/controls',
      icon: Icons.control_camera_sharp),
  MenuItem(
      title: 'Introducción a la App',
      subTitle: 'Sencillo tutorial de la app',
      link: '/tutorial',
      icon: Icons.start_outlined),
  MenuItem(
      title: 'InfiniteScroll y Pull',
      subTitle: 'Listas infinitas y pull to refresh',
      link: '/scroll',
      icon: Icons.list_alt_outlined),
  MenuItem(
    title: 'Cambiar tema',
    subTitle: 'Cambiar el tema de la aplicación',
    link: '/theme-changer',
    icon: Icons.color_lens_outlined,
  ),
];
