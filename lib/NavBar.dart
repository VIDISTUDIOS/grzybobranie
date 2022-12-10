import 'package:flutter/material.dart';
import 'CameraPage.dart';
import 'page.dart';
import 'MapScreen.dart';
import 'SettingsScreen.dart';
import 'homepage.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(

    //backgroundColor: Color.fromARGB(255, 33, 31, 31),
    child: ListView(
      
      padding: EdgeInsets.zero,
      children:  <Widget>[

        ListTile(
          leading: Icon(Icons.home),
          title: Text('Home'),
          onTap: () {
            Navigator.push(context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          },
        ),

        ListTile(
          leading: Icon(Icons.message),
          title: Text('Atlas grzybów'),
          onTap: () {
           // Navigator.push(context,
           //   MaterialPageRoute(builder: (context) => SecondScreen()),
           // );
          },
        ),
        ListTile(
          leading: Icon(Icons.add_location),
          title: Text('Mapa'),
          onTap: () {
            Navigator.push(context,
              MaterialPageRoute(builder: (context) => MapSample()),
           );
          },
        ),
        ListTile(
          leading: Icon(Icons.photo_album),
          title: Text('Galeria'),
          onTap: () {
           // Navigator.push(context,
           //   MaterialPageRoute(builder: (context) => SecondScreen()),
           // );
          },
        ),
        ListTile(
          leading: Icon(Icons.photo_camera),
          title: Text('Aparat'),
          onTap: () {
            Navigator.push(context,
              MaterialPageRoute(builder: (context) => PageC()),
            );
          },
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text('Settings'),
          onTap: () {
            Navigator.push(context,
              MaterialPageRoute(builder: (context) => SettingsScreen()),
            );
          },
        ),
      ],
    ),
  );
  }
}