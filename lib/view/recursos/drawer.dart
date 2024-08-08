import 'package:agenda_app/view/home.dart';
import 'package:flutter/material.dart';

class MenuDrawer extends StatelessWidget{
  const MenuDrawer({super.key});
  //Simulação de dados vindo do banco de dados
  final usuario = "Rodrigo Abreu Amorim";
  final email = "Teste@gmail.com";
  final fotoPerfil = "img/perfil.png";

  Text mostrarTitulo (String texto) {
    return Text(
      texto,
      style: const TextStyle(
        color: Colors.white54,
        fontWeight: FontWeight.bold
      ),
    );
  }

  Text mostrarSubTitulo(String texto) {
    return Text(
      texto,
      style: const  TextStyle(
        color: Colors.white54
      ),
    );
  }

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
             ListTile(
              title: mostrarTitulo('Home') ,
              subtitle: mostrarSubTitulo('Página Inicial') ,
              trailing: const Icon(
                Icons.keyboard_arrow_right,
                 color: Colors.white54 ,
                ),
              leading: const Icon(
                Icons.home,
                size: 28,
              ),
              //Vai para a página home
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Home()
                    )
                  );
              },
            ),
            
            //Perfil
            ListTile(
               title: mostrarTitulo('Perfil') ,
               subtitle: mostrarSubTitulo('Meu perfil'),
              trailing: const Icon(
                Icons.keyboard_arrow_right,
                 color: Colors.white54 ,
                ),
              leading: const Icon(
                Icons.person,
                size: 28,
              ),
              //Vai para página de Perfil
              onTap: () {
                
              },
            ),



             //Meus contatos
             ListTile(
               title: mostrarTitulo('Contatos') ,
              subtitle: mostrarSubTitulo('Meus Contatos') ,
              trailing: const Icon(
                Icons.keyboard_arrow_right,
                 color: Colors.white54 ,
                ),
              leading: const Icon(
                Icons.contact_page,
                size: 28,
              ),
              //Vai para pagina de contatos
              onTap: () {
                
              },
            ),

            //Configurações
            ListTile(
               title: mostrarTitulo('Configurações') ,
              trailing: const Icon(
                Icons.keyboard_arrow_right,
                 color: Colors.white54 ,
                ),
              leading: const Icon(
                Icons.settings,
                size: 28,
              ),
              //Vai para página de Configurações
              onTap: () {
                
              },
            ),

            //Logout
            ListTile(
               title: mostrarTitulo('Logout') ,
              subtitle: mostrarSubTitulo('Sair') ,
              trailing: const Icon(
                Icons.keyboard_arrow_right,
                 color: Colors.white54 ,
                ),
              leading: const Icon(
                Icons.logout,
                size: 28,
              ),
              onTap: () {
                
              },
            )

        ],
      ),
    );
  }

}