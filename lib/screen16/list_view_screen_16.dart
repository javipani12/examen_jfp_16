import 'package:examen_jfp_16/routes16/list_view_sub_16.dart';
import 'package:flutter/material.dart';

class ListViewScreen16 extends StatelessWidget {
   
  const ListViewScreen16({Key? key}) : super(key: key);
  
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
                backgroundImage: NetworkImage('https://img.europapress.es/fotoweb/fotonoticia_20220720184850_420.jpg'),
              
            ),
          ),
        ],
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          title: Text(ListViewSub.listViewSub16[index].name),
          leading: Icon(ListViewSub.listViewSub16[index].icon),
          onTap: () {
            Navigator.pushNamed(context, ListViewSub.listViewSub16[index].route);
          },
        ),
        separatorBuilder: (context, index) => const Divider(), 
        itemCount: ListViewSub.listViewSub16.length
      ),
    );
  }
}