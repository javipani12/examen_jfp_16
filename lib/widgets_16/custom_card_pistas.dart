import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {

  final String url;
  final String texto;

  const CustomCard({super.key, required this.url, required this.texto});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          FadeInImage(
            width: double.infinity,
            height: 260,
            fit: BoxFit.cover,
            placeholder: AssetImage('assets/jar-loading.gif'), 
            fadeInDuration: Duration(milliseconds: 360),
            image: NetworkImage(url),
          ),
          Text(texto),
        ],
      ),
    );
  }
}