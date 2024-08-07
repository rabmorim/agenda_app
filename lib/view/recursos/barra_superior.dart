import 'package:flutter/material.dart';

class BarraSuperior extends AppBar {
  
    BarraSuperior({super.key}) :super(
      //Titulo
      title: const Text(
        'Conecta+',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          letterSpacing: BorderSide.strokeAlignOutside,
          color: Colors.white54
        ),
      ),
      automaticallyImplyLeading: false, //Esconde o ícone original do menu
      leading: Builder(
        builder: ( BuildContext context) {
          return IconButton(
            //Abre o menu drawer
            onPressed: () => Scaffold.of(context).openDrawer(), 
            icon:const Icon(Icons.menu_book));
        }, 
        ),
      backgroundColor: const Color(0xff212121),

      //Menu ( Icone)
      iconTheme: const IconThemeData(color: Colors.white54),
    );
} 