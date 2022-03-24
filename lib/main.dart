import 'package:flutter/material.dart';

import 'CustomListTileD.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Test The App',
      home: HomePage(),
      theme: ThemeData(
        primaryColor: Colors.pink
      ),
    );
  }
}


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: _my_drawer(),
      appBar: AppBar(
        centerTitle: true,
        title: Text('THE WORLD'),


      ),

      body:Container(
        //color: Colors.amber,

        child: ListView(
          children:  [
            ListTile(
              title: Text('Bangladesh'),
              subtitle: Text('Dahka',style: TextStyle(color: Colors.white),),
              trailing: Text('University Area'),
              leading: Icon(Icons.map),
             iconColor:  Colors.red,
            ),

            ListTile(
              title: Text('India'),
              subtitle: Text('Kolkata',style: TextStyle(color: Colors.white),),
              trailing: Text('College Street'),
              leading: Icon(Icons.smart_button),
              iconColor:  Colors.red,
            ),
            ListTile(
              title: Text('India'),
              subtitle: Text('Kolkata',style: TextStyle(color: Colors.white),),
              trailing: Text('College Street'),
              leading: Icon(Icons.smart_button),
              iconColor:  Colors.red,
            ),
            ListTile(
              title: Text('UK'),
              subtitle: Text('London',style: TextStyle(color: Colors.white),),
              trailing: Text('Bangla Street'),
              leading: Icon(Icons.smart_button),
              iconColor:  Colors.red,
            ),

            ListTile(
              title: Text('Canada'),
              subtitle: Text('Toronto',style: TextStyle(color: Colors.black),),
              trailing: Text('Begum Para'),
              leading: Icon(Icons.smart_button),
              iconColor:  Colors.red,
            ),

            ListTile(
              title: Text('USA'),
              subtitle: Text('New York',style: TextStyle(color: Colors.black),),
              trailing: Text('College Street'),
              leading: Icon(Icons.smart_button),
              iconColor:  Colors.red,
              onTap: (){

              },
            ),


            Ink(
              color: Colors.grey,
              child: ListTile(
                title: Text('India'),
                subtitle: Text('Kolkata',style: TextStyle(color: Colors.white),),
                trailing: Text('College Street'),
                leading: Icon(Icons.smart_button),
                iconColor:  Colors.red,

                onTap: (){

                },
              ),
            ),

            Ink(
              color: Colors.grey,
              child: ListTile(
                title: Text('India'),
                subtitle: Text('Kolkata',style: TextStyle(color: Colors.white),),
                trailing: Text('College Street'),
                leading: Icon(Icons.smart_button),
                iconColor:  Colors.red,

                onTap: (){

                },
              ),
            ),


            Ink(
              color: Colors.grey,
              child: ListTile(
                title: Text('India'),
                subtitle: Text('Kolkata',style: TextStyle(color: Colors.white),),
                trailing: Text('College Street'),
                leading: Icon(Icons.smart_button),
                iconColor:  Colors.red,

                onTap: (){

                },
              ),
            ),

            Ink(
              color: Colors.grey,
              child: ListTile(
                title: Text('India'),
                subtitle: Text('Kolkata',style: TextStyle(color: Colors.white),),
                trailing: Text('College Street'),
                leading: Icon(Icons.smart_button),
                iconColor:  Colors.red,

                onTap: (){

                },
              ),
            )
          ] ,
        ),
      ),
    );
  }

  _my_drawer() {
    return Drawer(
      child: CustomListTileD()


    );
  }
}
