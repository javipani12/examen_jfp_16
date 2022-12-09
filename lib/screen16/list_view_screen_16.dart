import 'package:examen_jfp_16/routes16/list_view_sub_16.dart';
import 'package:flutter/material.dart';

class ListViewScreen16 extends StatelessWidget {
   
  const ListViewScreen16({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
          title: Text(ListViewSub.ListViewSub16[index].name),
          onTap: () {
            Navigator.pushNamed(context, ListViewSub.ListViewSub16[index].route);
          },
        ),
        separatorBuilder: (context, index) => const Divider(), 
        itemCount: ListViewSub.ListViewSub16.length
      ),
    );
  }
}