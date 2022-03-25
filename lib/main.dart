import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';
import 'package:testproject/home_screen.dart';

import 'CustomListTileD.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Test The App',
      // home: HomePage(),
      home: HomeScreen(),
      theme: ThemeData(
        primaryColor: Colors.pink
      ),
    );
  }
}

//
// class HomePage extends StatefulWidget {
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   List folder =['Android','Flutter','iOS','PHP','Java'];
//
//   List s_title=[' 2008','2017','2007','1994','1995'];
//
//   var headerTitle ='Home Screen';
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       drawer: _my_drawer(),
//       appBar: _myAppBar(context),
//
//       body: _myCustombody(context)
//     );
//   }
//
//   _my_drawer() {
//     return Drawer(
//       child: ListView(
//         children: [
//           CustomListTileD(
//             title1: folder[0],
//             subtitle: s_title[0],
//             icon: Icon(Icons.android),
//             t_icon: null,
//             onClicked: (){},
//           ),
//
//           CustomListTileD(
//             title1: folder[1],
//             subtitle: s_title[1],
//             icon: null,
//             t_icon: Icon(Icons.title),
//             onClicked: (){},
//           ),
//         ]
//       ),
//
//     );
//   }
//
//   _myCustombody(BuildContext context){
//
//
//   }
//
//   _myAppBar(BuildContext context) {
//     return AppBar(
//       centerTitle: true,
//       title: Text(headerTitle),
//       actions: [
//         IconButton(
//           icon: Icon(Icons.search),
//
//           onPressed: (){
//             print('Before Changed: $headerTitle');
//             setState(() {
//               headerTitle ='Dash Board';
//             });
//             print('After Changed :$headerTitle');
//
//             Fluttertoast.showToast(msg: "Search Button Pressed",
//                 webBgColor: Colors.amberAccent,
//                 webPosition: "center"
//
//             );
//           },
//         ),
//         IconButton(
//             onPressed: (){},
//             icon: Icon(Icons.contacts)),
//
//       ],
//
//
//     );
//   }
// }
