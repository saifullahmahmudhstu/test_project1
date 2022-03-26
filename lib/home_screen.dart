
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
var sort =false;

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
          }, icon: Icon(Icons.add)),
          IconButton(onPressed: () {
            setState(() {
             myList.clear();
            });
          }, icon: Icon(Icons.delete)),

          IconButton(onPressed: () {
            setState(() {

              sort = !sort;

             // if(sort == false){
             //   sort =true;
             // }
             // else{
             //   sort =false;
             // }
            });
          }, icon: Icon(Icons.sort)),
        ],
      ),

      // body: _ListView_Builder(context)
      body: _listViewSeparated(context),
    );
  }

  _listViewSeparated(BuildContext context) {
    return ListView.separated(
      reverse: sort,
        itemBuilder: (BuildContext context, int index) {
          return CustomListTileD(
              title1: '${myList[index]}',
              subtitle: '$index',
              onClicked: (){
                setState(() {
                  myList.removeAt(index);
                });
              },
              longPressed: (){
                setState(() {
                  myList[index] ='Bikash';
                });
              });

        },
        separatorBuilder: (BuildContext context, index) => const Divider(
          height: 5,
        ),
        itemCount: myList.length);

  }

  // _ListView_Builder(BuildContext context) {
  //   return ListView.builder(
  //     itemCount: myList.length,
  //     itemBuilder: (context, index) {
  //       return CustomListTileD(
  //         title1: ' ${myList[index]} -- $index',
  //         subtitle: myList[index],
  //         icon: null,
  //         t_icon: const Icon(Icons.title),
  //         onClicked: () {
  //           setState(() {
  //             myList.removeAt(index);
  //           });
  //           print('Size : ${myList.length}');
  //           Fluttertoast.showToast(msg: '${myList[index]} has been deleted');
  //         },
  //         longPressed: (){
  //
  //           setState(() {
  //             myList[index] = 'Bikash';
  //           });
  //
  //           Fluttertoast.showToast(msg: '${myList[index]} Change with Long Pressed');
  //         },
  //
  //       );
  //
  //     },
  //     reverse: sort,
  //   );
  // }
  }