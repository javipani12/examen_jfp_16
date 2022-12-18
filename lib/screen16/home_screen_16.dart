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
            const SizedBox(height: 150,),
            const FlutterLogo(size: 150,),
            const SizedBox(height: 50,),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, SignInRotue.signInRoute16), 
              child: const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text('Sign in', style: TextStyle(fontSize: 20),),
              )
            ),
            const SizedBox(height: 20,),
            const ElevatedButton(
              onPressed: null, 
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Text('Sign up', style: TextStyle(fontSize: 20),),
              )
            ),
          ],
        ),
      )
    );
  }
}