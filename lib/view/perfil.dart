import 'package:agenda_app/model/contato.dart';
import 'package:agenda_app/model/contato_service.dart';
import 'package:agenda_app/view/recursos/barra_superior.dart';
import 'package:agenda_app/view/recursos/drawer.dart';
import 'package:flutter/material.dart';

class Perfil extends StatelessWidget{
  //Guarda o ID do Contato selecionado ( por que nao tenho o index para fazer ficar dinamico)

    final int id;

  //Construtor com o Atributo obrigatório
  
  Perfil({super.key, 
   required this.id
   });

  //Objeto da classe que contém a Busca dos contatos

  final ContatoService service = ContatoService();
  
  @override
  Widget build(BuildContext context) {
    //Objeto da classe contato
     Contato contato = service.listarContato().elementAt(id - 1);

    return Scaffold(
      //Barra do titulo
      appBar: BarraSuperior(),

      //Menu Lateral(Hamburguer)
      drawer: const MenuDrawer(),

      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child:   Column(
          children: [
            //ìcone de perfil
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.person,
                  size: 250,
                  )
              ],
            ),

             const SizedBox( height: 25,),

            //Nome
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "${contato.nome} ${contato.sobrenome}",
                  style: const TextStyle(
                    fontSize: 28,
                    color: Colors.white54,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 3,
                    wordSpacing: 3
                  ),
                )
              ],
            ),

              const SizedBox(height: 25,),

            //Fone
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  contato.fone,
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.white54,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),

            const SizedBox(height: 25,),

            //E-mail
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  contato.email,
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.white54,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),

            Container(
              padding: const EdgeInsets.only(top: 25, bottom: 25),
              child: const Divider(
                height: 3,
                color: Colors.white54,

              ),
            ),

            const SizedBox(height: 25,),

            //Açoes

            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround ,
              children: [
                //Ligar
              Column(
                  children: [
                    Icon(Icons.phone,
                    color: Colors.white,
                    size: 32,
                    ),
                    //Espaçamento
                    SizedBox(height: 15),

                    Text(
                      "Ligar",
                      style: TextStyle(
                        color: Colors.white54,
                        fontSize: 16
                      ),
                    )
                  ],
                ),

                //Mensagem
              Column(
                  children: [
                    Icon(Icons.message,
                    color: Colors.white,
                    size: 32,
                    ),
                    //Espaçamento
                     SizedBox(height: 15),

                    Text(
                      "Mensagem",
                      style: TextStyle(
                        color: Colors.white54,
                        fontSize: 16
                      ),
                    )
                  ],
                ),
                //Video
              Column(
                  children: [
                    Icon(Icons.videocam_rounded,
                    color: Colors.white,
                    size: 32,
                    ),
                    //Espaçamento
                     SizedBox(height: 15),

                    Text(
                      "Vídeo",
                      style: TextStyle(
                        color: Colors.white54,
                        fontSize: 16
                      ),
                    )
              ]),

                //E-mail
              Column(
                  children: [
                    Icon(Icons.mail,
                    color: Colors.white,
                    size: 32,
                    ),
                    //Espaçamento
                     SizedBox(height: 15),

                    Text(
                      "E-mail",
                      style: TextStyle(
                        color: Colors.white54,
                        fontSize: 16
                      ),
                    )
                  ],
                ),

              ],
            )
          ],
        ) ,
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