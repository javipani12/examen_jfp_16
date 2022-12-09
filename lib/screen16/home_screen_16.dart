import 'package:examen_jfp_16/routes16/app_routes_16.dart';
import 'package:examen_jfp_16/routes16/sign_in_route_16.dart';
import 'package:examen_jfp_16/screen16/screens_16.dart';
import 'package:flutter/material.dart';

class HomeScreen16 extends StatelessWidget {
   
  const HomeScreen16({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 300,),
            FlutterLogo(size: 100,),
            SizedBox(height: 50,),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, SignInRotue.signInRoute16), 
              child: const Text('Sign in')
            ),
            SizedBox(height: 20,),
            ElevatedButton(
              onPressed: null, 
              child: const Text('Register')
            ),
          ],
        ),
      )
    );
  }
}