import 'package:flutter/material.dart';

class ReservasScreen extends StatelessWidget {
   
  const ReservasScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reservas'),
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
      body: Column(
        children: [
          
        ],
      )
    );
  }
}