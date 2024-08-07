import 'package:flutter/material.dart';

class MenuDrawer extends StatelessWidget{
  const MenuDrawer({super.key});
  //Simulação de dados vindo do banco de dados
  final usuario = "Rodrigo Abreu Amorim";
  final email = "Teste@gmail.com";
  final fotoPerfil = "img/perfil.png";

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
            UserAccountsDrawerHeader(
              accountName: Text(
                usuario,
                style: const TextStyle(
                  color: Colors.white54,
                  fontWeight: FontWeight.bold
                ),
              ), 
              accountEmail: Text(
                email,
                style: const TextStyle(
                  color: Colors.white54,
                  fontWeight: FontWeight.bold
                ),
                ) ,
                //Imagem de perfil
               currentAccountPicture: Image.asset(fotoPerfil) ,

               decoration:const BoxDecoration(
                color: Color(0xff212121)
               ),

              ),

              //Home

              //Meus contatos

              //COnfigurações

              //Logout

        ],
      ),
    );
  }

}