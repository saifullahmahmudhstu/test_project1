

import 'package:flutter/material.dart';

class CustomListTileD extends StatelessWidget {


  String title1;
  String subtitle;
  Icon ? icon;
  Icon ? t_icon;
  String ? t_text;
  VoidCallback onClicked;
  VoidCallback longPressed;



  CustomListTileD(
      {required this.title1, required this.subtitle, this.icon, this.t_icon, this.t_text ,required this.onClicked,required this.longPressed});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title1),
      subtitle: Text(subtitle),
      leading: icon ?? Text(title1[0],style: const TextStyle(fontSize: 25),),
      trailing: t_icon,
      onTap: onClicked,
      onLongPress: longPressed,
    );
  }
}
