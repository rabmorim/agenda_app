import 'package:agenda_app/view/home.dart';
import 'package:agenda_app/view/recursos/estilo.dart';
import 'package:flutter/material.dart';

void main() => runApp(
   MaterialApp(
    title: "Agenda de Contatos",
    home: const Home(),
    debugShowCheckedModeBanner: false,
    theme: estilo() ,
  )
);