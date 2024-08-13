import 'package:agenda_app/model/contato.dart';
import 'package:agenda_app/model/contato_service.dart';
import 'package:agenda_app/view/recursos/barra_superior.dart';
import 'package:agenda_app/view/recursos/drawer.dart';
import 'package:flutter/material.dart';

class Busca extends StatefulWidget{
  const Busca({super.key});

  @override
  State<StatefulWidget> 
  createState() => BuscaState();

}

class BuscaState extends State<Busca> {
  //Objeto de model
  ContatoService service = ContatoService();
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    //Barra titulo
    appBar: BarraSuperior(),

    //Menu Lateral(Hamburguer)
    drawer: const MenuDrawer(),
    
    body: ListView.builder(
      itemCount: service.listarContato().length, 
      itemBuilder: (BuildContext context, int index) {
        //Guarda o retorno da lista no objeto da classe
        Contato contato = service.listarContato().elementAt(index);

        //Espaçamento
        const Padding(padding: EdgeInsets.fromLTRB(8, 8, 8, 75));

        return Container(
          color: const Color.fromARGB(255, 52, 51, 51),
          padding: const EdgeInsets.all(5),
          margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 7),
          child: ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                //nome e telefone
                Column(
                  children: [
                    
                    //Nome
                    Text(
                      "${contato.nome} ${contato.sobrenome}",
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),

                    //Telefone
                     Text(
                      contato.fone,
                      style: const TextStyle(
                        color: Colors.white54,
                        fontSize: 14
                      ),
                    ),

                  ],
                )
              ],

            ),
            leading:  const Icon(Icons.person),
            trailing: IconButton(
              onPressed: () {

                //Ao pressionar
              }, 
              icon: const Icon(
                Icons.keyboard_arrow_right,
                color: Colors.white54,
              )) ,
          ) ,
        );
      }),

      //Botão flutuante
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //Adiciona um novo contato

        },
        child: const Icon(
          Icons.person_add,
          color: Colors.white54
        ),
        ),
   );
  }

}