import 'package:examen_jfp_16/routes16/app_routes_16.dart';
import 'package:examen_jfp_16/theme16/app_theme_16.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'home',
      routes: AppRoutes.getAppRoutes(),
      theme: AppTheme.lightTheme16,
    );
  }
}