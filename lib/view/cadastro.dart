import 'package:agenda_app/model/contato.dart';
import 'package:agenda_app/model/contato_service.dart';
import 'package:agenda_app/view/buscar.dart';
import 'package:agenda_app/view/recursos/barra_superior.dart';
import 'package:agenda_app/view/recursos/drawer.dart';
import 'package:flutter/material.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({super.key});
  
  @override
  State<StatefulWidget> createState() => CadastroState();

}

class CadastroState extends State<Cadastro>{
  //Controladores dos campos de input
  final nome = TextEditingController();
  final sobrenome = TextEditingController();
  final fone = TextEditingController();
  final email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BarraSuperior(),
      
      drawer: const MenuDrawer(),

      body:  SingleChildScrollView(
          //Formulário
          child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 35),
            margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 35),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.shade800
            ),
            child:  Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                //Título
                Container(
                  alignment: Alignment.center ,
                  margin: const EdgeInsets.only(bottom: 15),
                  child: const Text(
                    "Cadastrar contato",
                    style: TextStyle(
                      color: Colors.white54,
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                        letterSpacing: BorderSide.strokeAlignCenter
                    ),
                  ),
                ),

                //Inputs(Campos de formulário)
                campoInput("Nome", nome),
                campoInput("Sobrenome", sobrenome),
                campoInput("Telefone", fone),
                campoInput("E-mail", email),
                
                
                // const SizedBox(height: 15,)

                //Botões

                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [

                    //Botão cadastrar
                      Builder(
                        builder: (BuildContext context) {
                          return ElevatedButton(
                            onPressed: () {
                              cadastrar();
                            }, 
                            child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                              child: const Text(
                                "Cadastrar",
                                style: TextStyle(
                                  color: Colors.white54,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            )
                          );
                        }),

                      //Botão Limpar
                      Builder(
                        builder: (BuildContext context) {
                          return ElevatedButton(
                            onPressed: () {
                              limpar();
                            }, 
                            style: const ButtonStyle(
                              backgroundColor: WidgetStatePropertyAll(Colors.white54)
                            ),
                            child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                              child: const Text(
                                "Limpar",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                            
                          );
                        }),


                   
                  ],
                ),


              ],
            ) ,


          ),
      ),

    );
  }

  //Classe que Retorna a estrutura do campo input
  Container campoInput (String nomeCampo , TextEditingController controlador) {

    return Container(
      //Espaçamento
      margin: const EdgeInsets.only(bottom: 20),

      child: TextField(
      //Atributo que recebe o valor do campo
      
        controller: controlador,

        decoration: InputDecoration( 
        labelText: nomeCampo,
        labelStyle: const TextStyle(
        color: Colors.white54
          ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white54)
        ),

        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white54)
        ),
        
      
        
      ),
      ),
    );
  }

  //Cadastrar

  void cadastrar () {
    ContatoService service = ContatoService();

    //Guardar o último ID cadastrado
      int ultimoId = service.listarContato().length + 1;


    Contato contato = Contato(
      id: ultimoId, 
      nome: nome.text,
      sobrenome: sobrenome.text, 
      email: email.text, 
      fone: fone.text
      );
      //Enviar o objeto preenchido para adicionar na lista
      String mensagem = service.cadastrarContato(contato);
      
      //Mostra a mensagem de cadastro feito
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            mensagem,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16
            ),
            ),
          duration:const Duration(milliseconds: 2000) ,
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.grey.shade400,
          )
        );

        //Redireciona para a tela de Busca
        Future.delayed(
          const Duration(milliseconds: 2500),
          () {
            Navigator.push(
              context, 
              MaterialPageRoute(
                builder:(context) => const Busca()
                )
              );
          },
          );

  }
    //Limpar os campos
    void limpar () {
    nome.text = "";
    sobrenome.text = "";
    fone.text = "";
    email.text = "";
   
  }
}
