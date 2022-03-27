

import 'package:flutter/material.dart';

class CustomListTileD extends StatelessWidget {


  String title1;
  String? subtitle;
  String ? imageUrl;
  String ? trailing1;

  VoidCallback onClicked;
  VoidCallback longPressed;



  CustomListTileD(
      { required this.title1,  this.subtitle, this.imageUrl, this.trailing1, required this.onClicked,required this.longPressed});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title1),

      subtitle: Text(subtitle?? ''),

      // leading: imageUrl ?? Text(title1[0],style: const TextStyle(fontSize: 25),),
      leading: ClipOval(
        child: CircleAvatar(    //when declare as IconData
          child: imageUrl ==null ? Text(title1[0],style: const TextStyle(fontSize: 25),) : Image.network(imageUrl!)
        ),
      ),

      trailing: Text(trailing1 ??''),
      onTap: onClicked,
      onLongPress: longPressed,
    );
  }
}
