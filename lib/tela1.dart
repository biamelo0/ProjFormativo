import 'package:flutter/material.dart';
import 'mapa1.dart';
import 'mapa2.dart';
import 'mapa3.dart';


class Tela1 extends StatelessWidget{
  const Tela1({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: const Text ('App dos maps'),
          centerTitle: true,
          backgroundColor: Colors.deepOrangeAccent,
        ),

        body: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(10, 200, 10, 10),

          child: Column(

              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[

                Column(

                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[


                    SizedBox(
                      width: 1000.0,
                      child:  ElevatedButton(
                        child: const Text('Mapa 1'),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Mapa1()),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      width: 1000.0,
                      child:  ElevatedButton(
                        child: const Text('Mapa 2'),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Mapa2()),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      width: 1000.0,
                      child:  ElevatedButton(
                        child: const Text('Mapa 3'),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Mapa3()),
                          );
                        },
                      ),
                    ),


                  ],
                )
              ]
          ),
        )
    );
  }
}