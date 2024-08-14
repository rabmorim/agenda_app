import 'package:agenda_app/model/contato.dart';

class ContatoService {
  
  List listarContato () {
    //retorna a lista de contatos
    List<Contato> contatos = [
      Contato(
        id: 1, 
        nome: "Rodrigo", 
        sobrenome: "Amorim", 
        email: "teste@gmail.com", 
        fone: "24 98842-6526"
        ),
      Contato(
        id: 2, 
        nome: "Kayke", 
        sobrenome: "Jefferson", 
        email: "teste1@gmail.com", 
        fone: "32 9988-5522"
        ),
      Contato(
        id: 3, 
        nome: "Ana", 
        sobrenome: "Leonel", 
        email: "teste2@gmail.com", 
        fone: "32 9987-5533"
        ),
      Contato(
        id: 4, 
        nome: "Rafael", 
        sobrenome: "Zapico", 
        email: "teste3@gmail.com", 
        fone: "32 9966-9999"
        ),
      Contato(
        id: 5, 
        nome: "Pablo", 
        sobrenome: "Lima", 
        email: "teste4@gmail.com", 
        fone: "32 9988-5522"
        ),
      Contato(
        id: 6, 
        nome: "Vitor", 
        sobrenome: "Martins", 
        email: "teste@gmail.com", 
        fone: "32 9986-3522"
        ) 
    ];
    return contatos;
  }
}