
  import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
  import 'package:fluttertoast/fluttertoast.dart';
  import 'package:testproject/models/my_user_model.dart';
import 'package:testproject/widgets/responsive_helper.dart';

  import 'CustomListTileD.dart';

  class HomeScreen extends StatefulWidget {
    const HomeScreen({Key? key}) : super(key: key);

    @override
    State<HomeScreen> createState() {
      print('Create State Method Called');
      return _HomeScreenState();
    }
  }


  List<MyModelUser> myList =[ ];

  double myScreenHeight = 0.0;
  double myScreenWidth =0.0;

  var sort =false;

  class _HomeScreenState extends State<HomeScreen> {

    @override
    void initState() {
      print('Init State Called');

      myList.add(MyModelUser(userId: '190',
          userName: 'Rimon',
          userImage: 'https://avatars.githubusercontent.com/u/92266943?v=4'));
      myList.add(MyModelUser(userId: '190',
          userName: 'Rimon ',
          userImage: 'https://media.istockphoto.com/photos/businessman-silhouette-as-avatar-or-default-profile-picture-picture-id476085198'));
      myList.add(MyModelUser(userId: '160', userName: 'Mithun',userImage: 'https://cdn.iconscout.com/icon/free/png-256/avatar-371-456323.png'));
      super.initState();
    }

    @override
    Widget build(BuildContext context) {
      myScreenWidth = MediaQuery.of(context).size.width;
      myScreenHeight = MediaQuery.of(context).size.height;


      print('Build Method Called');

      return Scaffold(
          appBar: AppBar(
            title: Text('Home Screen'),
            actions: [
              IconButton(onPressed: () {
                setState(() {
                  // print('Size of List ${myList.length}');

                  // myList.add('Rimon');
                  myList.add(MyModelUser(userId: '333',
                      userName: 'Samaul',
                      userImage: 'https://cdn-icons-png.flaticon.com/512/149/149071.png'));
                });
              }, icon: Icon(Icons.add)),
              IconButton(onPressed: () {
                setState(() {
                  myList.clear();
                });
              }, icon: Icon(Icons.delete)),

              IconButton(onPressed: () {
                setState(() {
                  // sort = !sort;

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

          // body: _listViewBuilder(context)
        // body: _listViewSeparated(context),
        body: _myBody(context)
      );
    }

  _myBody(BuildContext context) {
      return SingleChildScrollView(
        child: Column(
          children: [
            Container(

              height: 100,
              width: double.infinity,
              margin: EdgeInsets.only(left: 23,top: 5, right: 23),
              child: _activeUserList (context),
              // decoration: BoxDecoration(
              //   color: Colors.purple,
              //   // borderRadius: BorderRadius.all(Radius.circular(30)),
              //   borderRadius: BorderRadius.only(
              //       bottomLeft: Radius.circular(20),
              //   topRight: Radius.circular(20)
              //   ),
              //   border: Border.all(color: Colors.black,width: 10,style: BorderStyle.none),
              //   boxShadow: [
              //     BoxShadow(
              //       color: Colors.yellow,
              //       blurRadius: 10,
              //
              //   )],
              //   gradient: LinearGradient(
              //     begin: Alignment.centerLeft,
              //
              //     colors: [
              //       Colors.red,
              //       Colors.blue,
              //       Colors.amberAccent
              //
              //     ]
              //   ),
              //   image: DecorationImage(image: NetworkImage('https://upload.wikimedia.org/wikipedia/en/6/62/Bangladesh_Railway_logo.jpg'),
              //   fit: BoxFit.cover,
              //   opacity: 3)
              //
              // ),
            ),

            Container(

              height: 100,
              width: double.infinity,
              margin: EdgeInsets.only(left: 23,top: 5, right: 23),
              child: Center(
                child: Text('Height: $myScreenHeight Width: $myScreenWidth'),
              )
            ),

            _listViewBuilder(context),
            _gridView (),


          ],
        ),
      );

  }

  _gridView (){

      return GridView.builder(
        itemCount: myList.length,

        physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,

          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount:  ResponsiveHelper.isMobile(context) ? 3 : ResponsiveHelper.isTab(context) ? 4 :ResponsiveHelper.isDesktop(context) ? 6 : 7 ),
          itemBuilder: (c,i) {
            return Container(


              padding: EdgeInsets.all(5),

              margin: EdgeInsets.all(5),
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10))

              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    // color: Colors.white,
                    height: 100,
                    width: 100,
                    child: ClipOval(
                      child: CircleAvatar(
                          child: Image.network(myList[i].userImage.toString())),
                    ),
                  ),
                  Container(
                    color: Colors.black12,
                    height: 50,
                    width: double.infinity,
                    child: Center(
                        child: Text(myList[i].userName.toString())),
                  )
                ],
              )
            );
          });
  }

  _activeUserList (BuildContext context){

      return ListView.builder(

        scrollDirection: Axis.horizontal,
          itemCount: myList.length,
          itemBuilder: (context , index){
            return Container(
              margin: EdgeInsets.only(right: 5),
              height: 95,
              width: 95,
              // color: Colors.yellow,
              child: ClipOval(

                    child: Image.network(myList[index].userImage.toString())

              ),
            );
          },
          );
  }

  // _listViewSeparated(BuildContext context) {
  //   return ListView.separated(
  //     reverse: sort,
  //       itemBuilder: (BuildContext context, int index) {
  //         return CustomListTileD(
  //             title1: '${myList[index]}',
  //             subtitle: '$index',
  //             onClicked: (){
  //               setState(() {
  //                 myList.removeAt(index);
  //               });
  //             },
  //             longPressed: (){
  //               setState(() {
  //                 myList[index] ='Bikash';
  //               });
  //             });
  //
  //       },
  //       separatorBuilder: (BuildContext context, index) => const Divider(
  //         height: 5,
  //       ),
  //       itemCount: myList.length);
  //
  // }
        //ListView Builder
    _listViewBuilder(BuildContext context) {
      return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: myList.length,
        itemBuilder: (context, index) {

          return CustomListTileD(
            title1: myList[index].userName ?? '',
            // subtitle: myList[index],
            imageUrl: myList[index].userImage,

            trailing1: myList[index].userId ?? '',
            onClicked: () {
              setState(() {
                myList.removeAt(index);
              });
              print('Size : ${myList.length}');
              // Fluttertoast.showToast(msg: '${myList[index]} has been deleted');
            },
            longPressed: (){

              setState(() {
                myList[index].userName = 'Bikash';
              });

              // Fluttertoast.showToast(msg: '${myList[index]} Change with Long Pressed');
            },

          );

        },
        // reverse: sort,
      );
    }
    }

