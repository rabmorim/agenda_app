import 'package:agenda_app/view/recursos/barra_superior.dart';
import 'package:agenda_app/view/recursos/drawer.dart';
import 'package:flutter/material.dart';

class Perfil extends StatelessWidget{
  const Perfil({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Barra do titulo
      appBar: BarraSuperior(),

      //Menu Lateral(Hamburguer)
      drawer: const MenuDrawer(),

      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: const Column(
          children: [
            //ìcone de perfil


            SizedBox(height: 10),

            //nome


            SizedBox(height: 10),
            //Fone e e-mail



          ],
        ),
      ),

      
      //Botão flutuante(Editar)
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          //Editar
        },
        child:const Icon(
          Icons.edit,
          color: Colors.white54,
          ),
        ) ,


    );
  }

}