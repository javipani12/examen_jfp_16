import 'package:examen_jfp_16/routes16/list_view_sub_16.dart';
import 'package:flutter/material.dart';

class ListViewScreen16 extends StatelessWidget {
   
  const ListViewScreen16({Key? key}) : super(key: key);

  void displayDialog(BuildContext context){
    showDialog(
      barrierDismissible: false,
      context: context, 
      builder: (context) {
        return AlertDialog(
          title: const Text('Aviso'),
          shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(15)),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('El sistema de reservas está deshabilitado en estos momentos'),
              SizedBox(height: 10,),
              FlutterLogo(size: 100,),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context), 
              child: const Text('Cancelar'),
            ),
          ],
        );
      },
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Flutter App'),
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
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          title: Text(ListViewSub.listViewSub16[index].name),
          leading: Icon(ListViewSub.listViewSub16[index].icon),
          onTap: () {
            if (ListViewSub.listViewSub16[index].route != 'reservas') {
              Navigator.pushNamed(context, ListViewSub.listViewSub16[index].route);
            } else {
              displayDialog(context);
            }
            
          },
        ),
        separatorBuilder: (context, index) => const Divider(), 
        itemCount: ListViewSub.listViewSub16.length
      ),
    );
  }
}