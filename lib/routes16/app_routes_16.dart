import 'package:examen_jfp_16/routes16/routes_16.dart';
import 'package:flutter/material.dart';
import 'package:examen_jfp_16/screen16/screens_16.dart';
import 'package:examen_jfp_16/models16/models_16.dart';

class AppRoutes {
  static const initialRoute16 = 'home';

  static final menuOptions16 = <MenuOption> [

    MenuOption(
      route: 'home', 
      name: 'Inicio', 
      icon: Icons.home,
      screen: const HomeScreen16()
    ),

  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes(){

    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final option in menuOptions16) {
      appRoutes.addAll({option.route: (BuildContext context ) => option.screen});
    }

    for (final option in SignInUpRoute.signInRouteOption16) {
      appRoutes.addAll({option.route: (BuildContext context ) => option.screen});
    }

    for (final option in ListViewRoute.listView16) {
      appRoutes.addAll({option.route: (BuildContext context ) => option.screen});
    }

    for (final option in ListViewSub.listViewSub16) {
      appRoutes.addAll({option.route: (BuildContext context ) => option.screen});
    }

    return appRoutes;

  }
}