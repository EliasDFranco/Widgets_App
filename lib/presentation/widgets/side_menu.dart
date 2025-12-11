import "package:flutter/material.dart";

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

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
    return Drawer(
      child: ListView(
        children: [
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
              label: const Text(
                "Otra pantalla",
              ),
            ),
          )
        ],
      ),
    );
  }
}
