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
                backgroundImage: NetworkImage('https://img.europapress.es/fotoweb/fotonoticia_20220720184850_420.jpg'),
              
            ),
          ),
        ],
      ),
      body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            SizedBox(height: 25,),
            CustomCardPistas(
              url: 'https://allforpadel.com/img/cms/pistas/fx2-1.jpg', 
              texto: 'Pista de pádel',
            ),
            SizedBox(height: 25,),
            CustomCardPistas(
              url: 'https://calviadeportes.com/wp-content/uploads/2020/10/Piscina-cubierta-de-Santa-Ponc%CC%A7a-03.jpg', 
              texto: 'Piscina cubierta',
            ),
            SizedBox(height: 25,),
            CustomCardPistas(
              url: 'https://grupopineda.eu/wp-content/uploads/2020/04/shutterstock_1832966869.jpg', 
              texto: 'Pista Baloncesto'
            ),
            SizedBox(height: 25,),
            CustomCardPistas(
              url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQi3fDs3tqTAM8_bqlUfHK9JMgODvxjYIYrNQ&usqp=CAU', 
              texto: 'Pista de fútbol',
            ),
          ],
        ),
      );
  }
}