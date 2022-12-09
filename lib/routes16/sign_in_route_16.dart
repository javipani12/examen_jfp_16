import 'package:flutter/material.dart';
import 'package:examen_jfp_16/models16/models_16.dart';
import 'package:examen_jfp_16/screen16/screens_16.dart';

class SignInRotue{

  static const signInRoute16 = 'signIn';

  static final SignInRouteOption16 = <MenuOption> [

    MenuOption(
      route: 'signIn', 
      name: 'SignIn', 
      screen: const SignInScreen16()
    )

  ];

}