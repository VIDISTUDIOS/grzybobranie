import 'package:flutter/material.dart';
import 'CameraPage.dart';
import 'page.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.add_a_photo),
            title: Text('Camera'),
            onTap: () {
              Navigator.push(context,
              MaterialPageRoute(builder: (context) => PageC()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.architecture),
            title: Text('Accelerometer'),
          ),
          ListTile(
            leading: Icon(Icons.battery_1_bar),
            title: Text('Battery'),

          ),
        ],
      ),
    );
  }
}