import 'package:examen_jfp_16/widgets_16/widgets_16.dart';
import 'package:flutter/material.dart';

class PistasScreen16 extends StatelessWidget {
   
  const PistasScreen16({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pistas'),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
                maxRadius: 20,
                backgroundImage: NetworkImage('https://static.wikia.nocookie.net/marvelcinematicuniverse/images/f/f8/Peter_Parker.png/revision/latest?cb=20220420040648&path-prefix=es'),
              
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            CustomCard(
              url: 'https://allforpadel.com/img/cms/pistas/fx2-1.jpg', 
              texto: 'Pista de pádel',
            ),
            CustomCard(
              url: 'https://barbastro.org/images/areas/deportes/Piscina_climatizada_Large.jpg', 
              texto: 'Piscina cubierta',
            ),
            CustomCard(
              url: 'https://grupopineda.eu/wp-content/uploads/2020/04/shutterstock_1832966869.jpg', 
              texto: 'Pista Baloncesto'
            ),
            CustomCard(
              url: 'https://grupopineda.eu/wp-content/uploads/2020/04/shutterstock_1832966869.jpg', 
              texto: 'Pista de fútbol',
            ),
          ],
        ),
      )
    );
  }
}