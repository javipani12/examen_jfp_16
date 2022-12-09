import 'package:flutter/material.dart';
import 'package:examen_jfp_16/models16/models_16.dart';
import 'package:examen_jfp_16/screen16/screens_16.dart';

class ListViewSub{

  static final ListViewSub16 = <MenuOption> [

    MenuOption(
      route: 'pistas', 
      name: 'Pistas', 
      screen: const PistasScreen16()
    ),

    MenuOption(
      route: 'monitores', 
      name: 'Monitores', 
      screen: const MonitoresScreen()
    ),

    MenuOption(
      route: 'reservas', 
      name: 'Reservas', 
      screen: const ReservasScreen()
    )

  ];

}