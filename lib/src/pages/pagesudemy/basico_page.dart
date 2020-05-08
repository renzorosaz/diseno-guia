
import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {

  final estiloTitulo= TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final subtitulo= TextStyle(fontSize: 15.0, color: Colors.red);

  get floatingActionButtonLocation => null;

  @override
  Widget build(BuildContext context) {

      return Scaffold(
        body:Column(

          children: <Widget>[
            Image(
              image:NetworkImage('https://images5.alphacoders.com/692/692038.jpg'),
            ),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 30.0,vertical:20.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: <Widget>[
                        Text('Gimnasio Recomendado',style: estiloTitulo),
                        SizedBox(height: 7.0,),
                        Text(' AcrobataGYM ',style: subtitulo,),
                        
                      ],
                    ),
                    
                  ),
                  Icon(Icons.star, color: Colors.red,size:15.0),
                  Text('41',style: TextStyle(fontSize: 15.0)),
                  
                ],
              ),
            ),



          ],
        ),
      );

  }
}