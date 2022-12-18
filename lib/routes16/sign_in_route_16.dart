import 'package:examen_jfp_16/models16/models_16.dart';
import 'package:examen_jfp_16/screen16/screens_16.dart';
import 'package:flutter/material.dart';

class SignInRotue{

  static const signInRoute16 = 'signIn';

  static final signInRouteOption16 = <MenuOption> [

    MenuOption(
      route: 'signIn', 
      name: 'SignIn',
      icon: Icons.signpost_outlined,
      screen: const SignInScreen16()
    )

  ];

}