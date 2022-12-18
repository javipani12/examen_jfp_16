import 'package:examen_jfp_16/models16/models_16.dart';
import 'package:examen_jfp_16/screen16/screens_16.dart';
import 'package:flutter/material.dart';

class ListViewRoute{

  static const listViewRoute = 'listView';

  static final listView16 = <MenuOption> [

    MenuOption(
      route: 'listView', 
      name: 'Flutter App',
      icon: Icons.list,
      screen: const ListViewScreen16()
    )

  ];

}