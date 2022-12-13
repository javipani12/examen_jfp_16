import 'package:examen_jfp_16/routes16/sign_in_route_16.dart';
import 'package:flutter/material.dart';

class HomeScreen16 extends StatelessWidget {
   
  const HomeScreen16({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 300,),
            const FlutterLogo(size: 100,),
            const SizedBox(height: 50,),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, SignInRotue.signInRoute16), 
              child: const Text('Sign in')
            ),
            const SizedBox(height: 20,),
            const ElevatedButton(
              onPressed: null, 
              child: Text('Register')
            ),
          ],
        ),
      )
    );
  }
}