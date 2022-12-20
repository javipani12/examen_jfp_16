import 'package:examen_jfp_16/widgets_16/custom_card_reservas.dart';
import 'package:flutter/material.dart';

class ReservasScreen extends StatelessWidget {
   
  const ReservasScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final String year = DateTime.now().year.toString();
    final String month = DateTime.now().month.toString();
    final String day = DateTime.now().day.toString();


    return Scaffold(
      appBar: AppBar(
        title: const Text('Reservas'),
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
          CustomCardReservas(),
        ],
      )
    );
  }
}