import 'package:flutter/material.dart';

ThemeData estilo() {
  ThemeData base = ThemeData.dark();
  return base.copyWith(
    primaryColor: const Color(0xff212121),
    colorScheme: const ColorScheme.dark(),
    //Tema do corpo da aplicação
    scaffoldBackgroundColor: const Color(0xff303030),
    drawerTheme: const DrawerThemeData(backgroundColor: Color(0xff303030)),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: Colors.grey,
    ),
    

    

    //botao flutuante
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Colors.black,
      hoverColor: Colors.grey.shade800
    )
  );
}
