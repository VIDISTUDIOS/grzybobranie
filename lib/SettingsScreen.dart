import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'CameraPage.dart';
import 'NavBar.dart';
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
  backgroundColor: Colors.transparent,
  elevation: 0,
     ),
       drawer: NavBar(),
      backgroundColor: Color.fromARGB(255, 33, 31, 31),
      body: Center(child:
      Column( children: [
        SizedBox(height: 30),
        Padding(
            padding: const EdgeInsets.all(20.0),
            child: const Text(
              "Settings",
              textAlign: TextAlign.center,
              style:TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        SizedBox(height: 30),
        Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 162, 22, 80),
            borderRadius: BorderRadius.circular(12),
          ),
          padding: EdgeInsets.only(left: 140.0, right: 140.0, bottom: 20.0, top: 20.0),
          child: const Text(
              "Motyw",
              textAlign: TextAlign.center,
              style:TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
        ),
SizedBox(height: 30),
        Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 162, 22, 80),
            borderRadius: BorderRadius.circular(12),
          ),
          padding: EdgeInsets.only(left: 140.0, right: 140.0, bottom: 20.0, top: 20.0),
          child:  const Text(
              "Język",
              textAlign: TextAlign.center,
              style:TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
        ),
SizedBox(height: 30),
        Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 162, 22, 80),
            borderRadius: BorderRadius.circular(12),
          ),
          padding: EdgeInsets.only(left: 140.0, right: 140.0, bottom: 20.0, top: 20.0),
          child:  const Text(
              "Dźwięk",
              textAlign: TextAlign.center,
              style:TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
        ),
SizedBox(height: 30),
      ],

      ),
      ),
    );
  }
}