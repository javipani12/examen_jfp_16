import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {

  final String? hintText16;
  final String? helperText16;
  final IconData? suffixIcon16;

  final bool obscureText16;

  final String formProperty16;
  final Map<String, String> formValues16;


  const CustomTextFormField({
    super.key, 
    this.hintText16, 
    this.helperText16, 
    this.suffixIcon16,
    required this.formProperty16, 
    required this.formValues16, 
    this.obscureText16 =false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      onChanged: (value) => formValues16[formProperty16] = value,
      validator: (value) {
        if(value!.length == 0) {
          return 'Nombre de usuario no válido';
        } else if( value.length < 6){
          return 'Mínimo 6 caracteres';
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