import 'package:disenos/src/pages/pagesmft/mft_iniciarsesion_page.dart';
import 'package:flutter/material.dart';

class InicioPageMFT extends StatelessWidget {

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
               _logo(),
               _botonesNT(),
               _botonIngreFocusero(context),
          ],
        ) /* add child content here */,
        ),
      );

  }

    Widget _logo(){

    return Container(
                padding: EdgeInsets.symmetric(vertical:180.0 ),
              child: Column(
                children: <Widget>[
                  Image(
                    image : AssetImage('assets/Star.png'),
                  ),

                  Text('MFT',style: estiloTitulo)
                ],
              ),
            );

  }

     Widget _botonesNT(){

    return Container(

              padding: EdgeInsets.symmetric(vertical:25.0),
              child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: <Widget>[
                 Column(
                   children: <Widget>[
                     Image.asset('assets/pera.png', width: 50.0,color:  Colors.green,),
                    SizedBox(height: 5.0),
                     RaisedButton(
                      elevation: 10,
                        padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
                        color: Colors.white,
                        textColor: Colors.greenAccent,
                        child:Text('Nutricionista'),
                        onPressed: (){ },
                      ),
                  ],
                  ),
                 Column(
                  children: <Widget>[
                    Image.asset('assets/pesa222.png', width: 50.0, color:  Colors.blueAccent,),
                    SizedBox(height: 5.0),
                    RaisedButton(
                      elevation: 10,
                        padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
                        color: Colors.white,
                        textColor: Colors.blueAccent,
                        child:Text('Trainer'),
                        onPressed: (){ },
                    ),

                  ],
                )
            ],
             ),
            );
      }

     Widget _botonIngreFocusero(BuildContext context){
    return  Container(
                //             <--- BoxDecoration here
                  child: RaisedButton(

                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    side: BorderSide(color: Colors.white)
                    ),
                    onPressed: () {
                    Navigator.of(context).push(_createRoute());
                   },

                  textColor: Colors.white , color: Colors.transparent,
                  child: Text("Estoy listo!",style: TextStyle(fontSize: 50)),
                ),

            );
    }

    Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => IniciarSesionFocusero(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

}