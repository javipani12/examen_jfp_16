import 'package:flutter/material.dart';

class MonitoresScreen extends StatelessWidget {
   
  const MonitoresScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Monitores'),
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
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: const [
              SizedBox(height: 30,),
              CircleAvatar(
                maxRadius: 120,
                backgroundImage: NetworkImage('https://www.rctb1899.es/sites/default/files/noticia/imatge//2495_1.jpg'),
              ),
              Text('Rafa Nadal', style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(height: 30,),
              CircleAvatar(
                maxRadius: 120,
                backgroundImage: NetworkImage('https://nolose.es/giselapulido.jpg'),
              ),
              Text('Gisela Pulido', style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(height: 30,),
              CircleAvatar(
                maxRadius: 120,
                backgroundImage: NetworkImage('https://piks-eldesmarqueporta.netdna-ssl.com/thumbs/o/1200/bin/2019/06/20/raul_gonzalez_blanco__001.jpg'),
              ),
              Text('Raúl González', style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(height: 30,),
              CircleAvatar(
                maxRadius: 120,
                backgroundImage: NetworkImage('https://img2.rtve.es/imagenes/doblete-oro-mireia-belmonte/1292451570832.jpg'),
              ),
              Text('Mireia Belmonte', style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(height: 30,),
            ],
          ),
        ),
      )
    );
  }
}