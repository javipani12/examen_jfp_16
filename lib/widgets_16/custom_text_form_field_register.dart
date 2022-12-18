import 'package:flutter/material.dart';

class CustomTextFormFieldRegister extends StatelessWidget {

  final String? hintText16;
  final String? helperText16;
  final IconData? suffixIcon16;

  final bool obscureText16;
  final TextInputType? email;

  final String formProperty16;
  final Map<String, String> formValues16;


  const CustomTextFormFieldRegister({
    super.key, 
    this.hintText16, 
    this.helperText16, 
    this.suffixIcon16,
    required this.formProperty16, 
    required this.formValues16, 
    this.obscureText16 =false, 
    this.email,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      onChanged: (value) => formValues16[formProperty16] = value,
      obscureText: obscureText16,
      keyboardType: email,
      validator: (value) {
        if(value!.length == 0) {
          return 'Longtitud no válida';
        } else if( value.length < 6){
          return 'Mínimo 6 caracteres';
        } else if( value.length > 50){
          return 'Máximo 50 caracteres';
        }
        
        if( !formValues16['email']!.contains('@') ){
          return 'El email no es válido';
        }
        
        if(formValues16['password'] != formValues16['repeated_password']) {
          return 'Las contraseñas no coinciden';
        }
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText16,
        helperText: helperText16,
        suffixIcon: Icon(suffixIcon16),
      ),
    );
  }
}