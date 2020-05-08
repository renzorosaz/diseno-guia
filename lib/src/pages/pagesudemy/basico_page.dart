
import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {

  final estiloTitulo= TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final subtitulo= TextStyle(fontSize: 15.0, color: Colors.red);

  get floatingActionButtonLocation => null;

  @override
  Widget build(BuildContext context) {

      return Scaffold(
        body:SingleChildScrollView(

          child: Column(
            children: <Widget>[

            _crearImage(),
            _primerConte(),
            _crearAcciones(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),

          ],
          ),
        ),
      );

  }
  Widget _crearImage(){

    return Container(
      width: double.infinity,
      child: Image(
      image:NetworkImage('https://images5.alphacoders.com/692/692038.jpg'),
      height: 200.0,
      fit:BoxFit.cover,
      ),
    );

  }

  Widget _primerConte(){

      return Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical:20.0),
        child: Row(
          children: <Widget>[

            Expanded(
              child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Acrobata GYM',style: estiloTitulo,),
                  SizedBox(height: 5.0),
                  Text('Av.universitaria 22 Comas Lima', style: subtitulo),
                ],
              ),
            ),
            Icon(Icons.star,color: Colors.red),
            Text('41'),
          ],
        ),
      );

  }

  Widget _crearAcciones(){

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _accion(Icons.call,'Call'),
        _accion(Icons.near_me,'Route'),
        _accion(Icons.share,'Share'),
      ],
    );
  }

  Widget _accion(IconData icon,String texto){

   return  Column(
          children: <Widget>[
            Icon(icon,color: Colors.blue, size:40.0),
            SizedBox(height: 5.0),
            Text(texto,style: TextStyle(fontSize:15.0, color: Colors.blueAccent)),
           ],
        );
  }
  
  Widget _crearTexto(){

    return SafeArea(

          child: Container(
           padding: EdgeInsets.symmetric(horizontal:40.0,vertical:20.0),
          child: Text(
          'Este gimnasio tiene 3 pisos con diferntes areas para realizar ejercicios, y por eso se recomienda mucho con ir toalla',
           textAlign: TextAlign.justify,

      ),
          ),
    );

  }

}