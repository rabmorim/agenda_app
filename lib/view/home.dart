import 'package:agenda_app/view/recursos/barra_superior.dart';
import 'package:agenda_app/view/recursos/drawer.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  
  @override
  State createState() => HomeState();
    
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    
    //appbar

     appBar: BarraSuperior() ,

    //drawer

    drawer: const MenuDrawer() ,
    //body

    // body: ,

    //Bottom navigation 

    // bottomNavigationBar: ,



   );
  }

}
