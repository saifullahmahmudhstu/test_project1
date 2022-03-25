
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'CustomListTileD.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() {
    print('Create State Method Called');
    return _HomeScreenState();
  }
}

var title1 ='';
var myList =[];

class _HomeScreenState extends State<HomeScreen> {

  @override
  void initState() {
    title1 = 'Init Home';
    print('Init State Called');
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print('Build Method Called');
    return Scaffold(
      appBar: AppBar(
        title: Text(title1),
        actions: [
          IconButton(onPressed: () {
            setState(() {
              print('Size of List ${myList.length}');
              title1 = 'Change in Set State';
              myList.add('Rimon');
            });
          }, icon: Icon(Icons.add))
        ],
      ),

      body: ListView.builder(
          itemCount: myList.length,
          itemBuilder: (context, index) {
            return CustomListTileD(
              title1: ' ${myList[index]} -- $index',
              subtitle: myList[index],
              icon: null,
              t_icon: const Icon(Icons.title),
              onClicked: () {
                setState(() {
                  myList.removeAt(index);
                });
                print('Size : ${myList.length}');
                Fluttertoast.showToast(msg: '${myList[index]} has been deleted');
              },

            );
          }
      ),
    );
  }
  }