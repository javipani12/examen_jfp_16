import 'package:examen_jfp_16/theme16/app_theme_16.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {

  final String url;
  final String? texto;

  const CustomCard({super.key, required this.url, this.texto});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15)
      ),
      elevation: 10,
      child: Column(
        children: [
          FadeInImage(
            width: double.infinity,
            height: 260,
            fit: BoxFit.cover,
            placeholder: const AssetImage('assets/jar-loading.gif'), 
            fadeInDuration: const Duration(milliseconds: 360),
            image: NetworkImage(url),
          ),
          if(texto != null)
          Container(
            alignment: AlignmentDirectional.topStart,
            padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10),
            child: Text(texto ?? 'Desconocido', style: const TextStyle(color: AppTheme.primary16)),
          ),
          Container(
            alignment: AlignmentDirectional.topStart,
            padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10),
            child: const Text('Dolor esse consequat cillum dolore exercitation laborum et do do sit.'),
          ),
          TextButton(
            onPressed: () {
              
            },
            child: Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(top: 10, bottom: 10, right: 10),
              child: const Text('Reservar', style: TextStyle(decoration: TextDecoration.underline),)
            ),
          ),
          
        ],
      ),
    );
  }
}