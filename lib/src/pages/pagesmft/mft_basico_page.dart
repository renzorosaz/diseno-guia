import 'package:flutter/material.dart';

class InicioPage extends StatelessWidget {

  final estiloTitulo= TextStyle(fontSize:18.0,fontWeight: FontWeight.bold, color: Colors.white);
  final estilosubTitulo= TextStyle(fontSize:18.0,color: Colors.red);

  @override
  Widget build(BuildContext context) {

      return Scaffold(

         body: Container(

        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/fondomft.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: <Widget>[
            Container(
                padding: EdgeInsets.symmetric(vertical:180.0 ),
              child: Column(
                children: <Widget>[
                  Image(
                    image : AssetImage('assets/Star.png'),
                  ),

                  Text('MFT',style: estiloTitulo)
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical:28.0),
             child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween ,
              children: <Widget>[

              Column(
                  children: <Widget>[
                    Image.asset('assets/pera.png', width: 50.0,color:  Colors.green,),
                    SizedBox(height: 5.0),
                    Text('Nutricionsita',style: estiloTitulo),

                  ],
                ),

              Column(
                  children: <Widget>[
                    Image.asset('assets/pesa222.png', width: 50.0, color:  Colors.blueAccent,),
                    SizedBox(height: 5.0),
                    Text('Trainer', style: estiloTitulo),
                  ],
                )
              ],
            ),
            ),

            Container(

              margin: const EdgeInsets.all(30.0),
                  padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration (
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ), //             <--- BoxDecoration here
                  child: Text(
                    "Estoy listo!!",
                    style: TextStyle(fontSize: 30.0),
               ),
            )

          ],
        ) /* add child content here */,
      ),


      );

  }
}