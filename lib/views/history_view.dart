import 'package:flutter/material.dart';

class HistoryView extends StatelessWidget { // Define uma classe HistoryView que estende StatelessWidget.
  final List<String> history; // Define uma variável final history que armazena o histórico de operações.

  const HistoryView({super.key, required this.history}); // Define um construtor que recebe o histórico como um argumento.

  @override
  Widget build(BuildContext context) { // Define o método build que constrói o widget.
    return Scaffold( // Retorna um Scaffold, que é um layout básico do Flutter.
      appBar: AppBar( // Define a AppBar do Scaffold.
        title: Text('Historico'), // Define o título da AppBar.
      ),
      body: ListView.builder( // Define o corpo do Scaffold como um ListView.builder, que constrói uma lista de widgets.
        itemCount: history.length, // Define o número de itens na lista como o tamanho do histórico.
        itemBuilder: (context, index) { // Define a função que constrói cada item na lista.
          return ListTile( // Retorna um ListTile, que é um widget que contém até três linhas de texto e ícones opcionais.
            title: Text(history[index]), // Define o título do ListTile como o item atual do histórico.
          );
        },
      ),
    );
  }
}
