import 'package:flutter/material.dart';

class CustomCardReservas extends StatefulWidget {

  const CustomCardReservas({Key? key}) : super(key: key);

  @override
  State<CustomCardReservas> createState() => _CustomCardReservasState();
}

class _CustomCardReservasState extends State<CustomCardReservas> {

  String _textoBoton = 'Reservar ya';
  Color _color = Colors.orange;

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
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const[
              Text('9:00   | 4 Pistas disponibles \n10:30 | Pádel')
            ],
          ),
          const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const[
              Icon(Icons.watch_later_outlined),
              SizedBox(width: 10),
              Text('Duración\n1:30 horas')
            ],
          ),
          const SizedBox(height: 10,),
          ElevatedButton (
            style: ElevatedButton.styleFrom(
              primary: _color,
            ),
            onPressed: () {
              
              if(_textoBoton == 'Reservar ya') {
                _textoBoton = 'Cancelar reserva';
                _color = Colors.grey;
              } else {
                _textoBoton = 'Reservar ya';
                _color = Colors.orange;
              }
              
              setState(() {
                
              });
            },
            child: Container(
              width: 200,
              alignment: AlignmentDirectional.center,
              child: Text( _textoBoton )
            ),
          ),
          
        ],
      ),
    );
  }
}