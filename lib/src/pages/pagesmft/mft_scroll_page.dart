import 'package:flutter/material.dart';

class ScrollPageMFT extends StatelessWidget {

   final estiloTitulo= TextStyle(fontSize:18.0,fontWeight: FontWeight.bold, color: Colors.white);
  final estilosubTitulo= TextStyle(fontSize:18.0,color: Colors.red);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          _pagina(),
          _pagina2(),
          _botonesNT(context),
          _botonIngreFocusero()
        ],
      )
    );

  }

 

  Widget _pagina() {

      return Container(
        decoration: BoxDecoration(
             image: DecorationImage(
             image: AssetImage("assets/fondomft.png"),
              fit: BoxFit.cover,
          ),
         ), /*
          add child content here */
        child: Column(
               children: <Widget>[
               _logo(),
               Icon(Icons.keyboard_arrow_down, size: 180.0,color:Colors.white)
          ],
        )
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

    Widget _botonesNT(BuildContext context){

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
                        onPressed: (){ 
                          Navigator.of(context).push(_createRoute());
                        },
                    ),

                  ],
                )
            ],
             ),
            );
      }


   Widget _botonIngreFocusero(){

     return  Container(
                //             <--- BoxDecoration here
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    side: BorderSide(color: Colors.white)
                    ),
                    onPressed: () {},
                   textColor: Colors.white , color: Colors.transparent,
                   child:
                   Text("Estoy listo!",style: TextStyle(fontSize: 50)
                   ),

                ),

            );
    }


  Widget _pagina2() {
    
     return Container(
        width: double.infinity,
        height: double.infinity,
        color: Color.fromRGBO(50, 100, 50, 1.0),
        child: Center(
          child: RaisedButton(
            shape: StadiumBorder(),
            color: Colors.greenAccent,
            textColor: Colors.black,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal:30.0,vertical:30.0),
              child: Text('Bienvenidos',style:TextStyle(fontSize: 35.0)),
            ),
            onPressed: (){}),
        ),
      );

  }

  

  Route _createRoute() {
    
    return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => _pagina2(),

    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(35.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.easeOutQuart;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
}