import 'package:flutter/material.dart';
import 'package:examen_jfp_16/models16/models_16.dart';
import 'package:examen_jfp_16/screen16/screens_16.dart';

class ListViewRoute{

  static const listViewRoute = 'listView';

  static final listView16 = <MenuOption> [

    MenuOption(
      route: 'listView', 
      name: 'Flutter App', 
      screen: const ListViewScreen16()
    )

  ];

}