import 'package:flutter/material.dart';

ThemeData estilo() {
  ThemeData base = ThemeData.dark();
  return base.copyWith(
    primaryColor: const Color(0xff212121),
    colorScheme: const ColorScheme.dark(),
    //Tema do corpo da aplicação
    scaffoldBackgroundColor: const Color(0xff303030),
    drawerTheme: const DrawerThemeData(backgroundColor: Color(0xff303030)),
    

    //botao flutuante
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Colors.white
    )
  );
}