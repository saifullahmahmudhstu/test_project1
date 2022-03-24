

import 'package:flutter/material.dart';

class CustomListTileD extends StatelessWidget {
  List folder =['Android','Flutter','iOS','PHP','Java'];

  // CustomListTileD()

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: Text(folder[0]),
          leading: CircleAvatar(
            child: Icon(Icons.folder),
          ),
          trailing: Icon(Icons.select_all_outlined),
          onTap: ,

        )
      ],

    );
  }
}
