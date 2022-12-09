import 'package:examen_jfp_16/routes16/list_view_routes_16.dart';
import 'package:flutter/material.dart';
import 'package:examen_jfp_16/widgets_16/widgets_16.dart';

class SignInScreen16 extends StatelessWidget {
   
  const SignInScreen16({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    
    final myFormKey16 = GlobalKey<FormState>();

    final Map<String, String> formValues16 = {
      'usuario': 'usuario',
      'password': 'password'
    };

    return Scaffold(
      body: Form(
        key: myFormKey16,
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              children: [
                SizedBox(height: 50,),
                FlutterLogo(size: 100),
                SizedBox(height: 30,),
                CustomTextFormField(
                  hintText16: 'Example',
                  suffixIcon16: Icons.group,
                  formProperty16: 'usuario',
                  formValues16: formValues16,
                ),
                SizedBox(height: 30,),
                CustomTextFormField(
                  hintText16: 'Example',
                  obscureText16: true,
                  formProperty16: 'password',
                  formValues16: formValues16,
                ),
                SizedBox(height: 30,),
                ElevatedButton(
                  onPressed: () {
                    FocusScope.of(context).requestFocus(FocusNode());
                    if( !myFormKey16.currentState!.validate()) {
                      print('Formulario no válido');
                      return;
                    } else {
                      Navigator.pushNamed(context, ListViewRoute.listViewRoute);
                    }
                  }, 
                  child: SizedBox(
                    width: double.infinity,
                    child: Center(child: const Text('Sign In'))
                  ),
                ),
                FloatingActionButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Icon(Icons.close),
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}