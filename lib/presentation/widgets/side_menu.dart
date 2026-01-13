import 'package:flutter/material.dart';
import 'dart:io' show Platform;
import 'package:widgets_app/config/theme/menu/menu_items.dart';
import 'package:go_router/go_router.dart';

class SideMenu extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  const SideMenu({super.key, required this.scaffoldKey});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  int navDrawerIndex = 0;
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    /* Obs: Aquí tendría que usar el widget NavigationDrawer, sin embargo mi versión de Flutter es bastante vieja para la fecha 11/12/2025. 
Sin embargo uso el Drawer normal sin problemas.Espero en un futuro al tener una mejor pc y
con más capacidad para poder usar la vs de Flutter actual a la fecha en la que se lea este comentario.
  */
    final hasNotch = MediaQuery.of(context).viewPadding.top > 0;

    if (Platform.isAndroid) {
      print("Android $hasNotch");
    } else {
      print("IOS $hasNotch");
    }
    return Drawer(
      child: ListView(children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 150),
          child: TextButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.house),
            label: const Text("Home Screen"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 150),
          child: TextButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.screen_lock_landscape),
            label: const Text("Otra pantalla"),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(28, hasNotch ? 10 : 20, 26, 10),
          child: const Text("Main"),
        ),
        ...appMenuItems.sublist(0, 8).map(
              (item) => Column(
                children: [
                  ListTile(
                    leading: Icon(item.icon),
                    title: Text(item.title),
                    onTap: (() {
                      context.push(item.link);
                      widget.scaffoldKey.currentState!.closeDrawer();
                    }),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(28, 16, 28, 10),
                    child: Divider(),
                  ),
                ],
              ),
            ),
      ]),
    );
  }
}
