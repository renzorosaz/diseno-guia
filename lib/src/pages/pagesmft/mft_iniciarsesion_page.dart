
import 'package:flutter/material.dart';


class IniciarSesionMFT extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        decoration: BoxDecoration(
             image: DecorationImage(
             image: AssetImage("assets/fondomft.png"),
              fit: BoxFit.cover,
          ),
         ), /*
          add child content here */
        ),
    );
  }
}