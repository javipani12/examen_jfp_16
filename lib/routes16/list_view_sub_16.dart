import 'package:examen_jfp_16/models16/models_16.dart';
import 'package:examen_jfp_16/screen16/screens_16.dart';
import 'package:flutter/material.dart';

class ListViewSub{

  static final listViewSub16 = <MenuOption> [

    MenuOption(
      route: 'pistas', 
      name: 'Pistas', 
      icon: Icons.picture_in_picture_alt_sharp,
      screen: const PistasScreen16()
    ),

    MenuOption(
      route: 'monitores', 
      name: 'Monitores', 
      screen: const MonitoresScreen(), 
      icon: Icons.groups_outlined
    ),

    MenuOption(
      route: 'reservas', 
      name: 'Reservas', 
      screen: const ReservasScreen(), 
      icon: Icons.save_as_rounded
    )

  ];

}