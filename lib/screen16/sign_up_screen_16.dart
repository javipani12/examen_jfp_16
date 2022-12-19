import 'package:flutter/material.dart';
import 'package:examen_jfp_16/widgets_16/widgets_16.dart';
import 'package:examen_jfp_16/routes16/routes_16.dart';

class SingUpScreen extends StatelessWidget {
   
  const SingUpScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final myFormKey16 = GlobalKey<FormState>();

    final Map<String, String> formValues16 = {
      'nombre': 'Javier',
      'apellidos': 'Fernández Paniagua',
      'email': 'javier@gmail.com',
      'password': 'password',
      'repeated_password': 'password2',

    };

    return Scaffold(
      body: Form(
        key: myFormKey16,
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              children: [
                const SizedBox(height: 50,),
                const FlutterLogo(size: 100),
                const SizedBox(height: 30,),
                CustomTextFormFieldRegister(
                  hintText16: 'Nombre',
                  suffixIcon16: Icons.group,
                  formProperty16: 'nombre',
                  formValues16: formValues16,
                ),
                const SizedBox(height: 30,),
                CustomTextFormFieldRegister(
                  hintText16: 'Apellidos',
                  suffixIcon16: Icons.group,
                  formProperty16: 'apellidos',
                  formValues16: formValues16,
                ),
                const SizedBox(height: 30,),
                CustomTextFormFieldRegister(
                  hintText16: 'Email',
                  suffixIcon16: Icons.email_outlined,
                  formProperty16: 'email',
                  email: TextInputType.emailAddress,
                  formValues16: formValues16,
                ),
                const SizedBox(height: 30,),
                CustomTextFormFieldRegister(
                  hintText16: 'Example',
                  obscureText16: true,
                  formProperty16: 'password',
                  formValues16: formValues16,
                ),
                const SizedBox(height: 30,),
                CustomTextFormFieldRegister(
                  hintText16: 'Example',
                  obscureText16: true,
                  formProperty16: 'repeated_password',
                  formValues16: formValues16,
                ),
                const SizedBox(height: 30,),
                ElevatedButton(
                  onPressed: () {
                    FocusScope.of(context).requestFocus(FocusNode());
                    if( !myFormKey16.currentState!.validate()) {
                      print('Formulario no válido');
                      return;
                    } else {
                      print(formValues16);
                      Navigator.pushNamed(context, ListViewRoute.listViewRoute);
                    }
                  }, 
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(child: Text('Sign Up'))
                  ),
                ),
              ],
            ),
          ),
      ),
      floatingActionButton: FloatingActionButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Icon(Icons.close),
                ),
    );
  }
}