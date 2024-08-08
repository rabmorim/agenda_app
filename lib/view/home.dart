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

      appBar: BarraSuperior(),

      //drawer

      drawer: const MenuDrawer(),

      //body
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                padding: const EdgeInsets.all(25),
                child: Center(
                  child: Column(
                    children: [
                      const Padding(padding: EdgeInsets.only(bottom: 100)),
                      const Text(
                        "Bem vindo ao Conecta+",
                        style: TextStyle(
                            color: Colors.white54,
                            fontWeight: FontWeight.bold,
                            fontSize: 28,
                            letterSpacing: BorderSide.strokeAlignCenter),
                      ),
                      const Padding(padding: EdgeInsets.only(bottom: 80)),
                      //Botao Buscar Contato
                      Builder(builder: (BuildContext context) {
                        return ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Home()));
                          },
                          child: Container(
                            width: 150,
                            padding: const EdgeInsets.all(10),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.search,
                                  color: Colors.white54,
                                ),
                                Text(
                                  "Buscar Contatos",
                                  style: TextStyle(
                                    color: Colors.white54,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                      //Botão cadastrar contato
                    ],
                  ),
                ))
          ],
        ),
      ),

      //Bottom navigation

      // bottomNavigationBar: ,
    );
  }
}
