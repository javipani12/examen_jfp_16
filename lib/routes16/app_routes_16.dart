import 'package:examen_jfp_16/routes16/list_view_routes_16.dart';
import 'package:examen_jfp_16/routes16/list_view_sub_16.dart';
import 'package:examen_jfp_16/routes16/sign_in_route_16.dart';
import 'package:flutter/material.dart';
import 'package:examen_jfp_16/screen16/screens_16.dart';
import 'package:examen_jfp_16/models16/models_16.dart';

class AppRoutes {
  static const initialRoute16 = 'home';

  static final MenuOptions16 = <MenuOption> [

    MenuOption(
      route: 'home', 
      name: 'Inicio', 
      screen: const HomeScreen16()
    )

  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes(){

    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final option in MenuOptions16) {
      appRoutes.addAll({option.route: (BuildContext context ) => option.screen});
    }

    for (final option in SignInRotue.SignInRouteOption16) {
      appRoutes.addAll({option.route: (BuildContext context ) => option.screen});
    }

    for (final option in ListViewRoute.listView16) {
      appRoutes.addAll({option.route: (BuildContext context ) => option.screen});
    }

    for (final option in ListViewSub.ListViewSub16) {
      appRoutes.addAll({option.route: (BuildContext context ) => option.screen});
    }

    return appRoutes;

  }
}