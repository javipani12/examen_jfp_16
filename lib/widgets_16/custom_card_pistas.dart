import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {

  final String url;
  final String texto;

  const CustomCard({super.key, required this.url, required this.texto});

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
          Container(
            alignment: AlignmentDirectional.centerEnd,
            padding: const EdgeInsets.only(top: 10, bottom: 10, right: 20),
            child: Text(texto),
          )
          
        ],
      ),
    );
  }
}