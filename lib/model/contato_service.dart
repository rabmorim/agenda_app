import 'package:agenda_app/model/contato.dart';
class ContatoService {
  //Atributos da classe
  static List<Contato> contatos = [
 ];

  //Método para cadastrar Contatos na Agenda
  String cadastrarContato(Contato contato){
    contatos.add(contato);
    return "Novo Contato: ${contato.nome} ${contato.sobrenome}";
  }

  //Método para buscar os Contatos Registrados
  List listarContato () {
     return contatos;
  }
}