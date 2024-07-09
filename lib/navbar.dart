import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(children:  [
      DrawerHeader(
          child: Column(
        children: [
          Image(
            image: AssetImage("assets/logo.png"),
            width: 60,
            height: 60,
          ),
          Text("My App")
        ],
      )),
      ListTile(
        leading: Icon(Icons.dashboard_customize_rounded),
        title: Text("Dashboard"),
         onTap: () {
          Get.toNamed('/home');
        },
      ),
      ListTile(
        leading: Icon(Icons.map_outlined),
        title: Text("Map"),
        onTap: () {
          Get.toNamed('/map');
        },
      ),
    ]));
  }
}
