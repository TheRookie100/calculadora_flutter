import 'package:calculadora/models/theme_model.dart';
import 'package:calculadora/widgets/calculator_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/calculator.dart' as calc;
import 'history_view.dart';

class HomeView extends StatefulWidget { // Define uma classe HomeView que estende StatefulWidget.
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState(); // Define o método createState que retorna uma instância de _HomeViewState.
}

class _HomeViewState extends State<HomeView> { // Define uma classe _HomeViewState que estende State<HomeView>.
  void _onButtonPressed(String buttonText) { // Define um método que é chamado quando um botão é pressionado.
    Provider.of<calc.Calculator>(context, listen: false).buttonPressed(buttonText); // Chama o método buttonPressed no Calculator.
  }

  @override
  Widget build(BuildContext context) { // Define o método build que constrói o widget.
    return Scaffold( // Retorna um Scaffold.
      appBar: AppBar( // Define a AppBar do Scaffold.
        title: const Text('Calculadora'), // Define o título da AppBar.
        actions: [ // Define as ações da AppBar.
          IconButton( // Define um IconButton que navega para a HistoryView quando pressionado.
            icon: const Icon(Icons.history),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HistoryView(history: Provider.of<calc.Calculator>(context, listen: false).history)),
              );
            },
          ),
          IconButton( // Define um IconButton que alterna o tema quando pressionado.
            icon: const Icon(Icons.brightness_6),
            onPressed: () {
              Provider.of<ThemeModel>(context, listen: false).toggleTheme();
            },
          ),
        ],
      ),
      body: Column( // Define o corpo do Scaffold como um Column, que é um widget que exibe seus filhos em uma coluna vertical.
        mainAxisAlignment: MainAxisAlignment.end, // Alinha os filhos ao final da coluna.
        children: <Widget>[ // Define os filhos da coluna.
          Container( // Define um Container, que é um widget que permite personalizar seu filho widget.
            padding: const EdgeInsets.all(20), // Define o padding do Container.
            alignment: Alignment.centerRight, // Alinha o filho do Container à direita.
            child: Consumer<calc.Calculator>( // Define o filho do Container como um Consumer de Calculator.
              builder: (context, calculator, child) { // Define a função que constrói o widget.
                return Text( // Retorna um Text widget que exibe a saída do Calculator.
                  calculator.output,
                  style: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold), // Define o estilo do texto.
                );
              },
            ),
          ),
          const Divider(), // Define um Divider, que é um widget que exibe uma linha horizontal.
          Column( // Define um Column que contém as linhas de botões.
            children: <Widget>[ // Define os filhos da coluna.
              _buildButtonRow(["C", "^", "!", "/"]),
              _buildButtonRow(["7", "8", "9", "x"]),
              _buildButtonRow(["4", "5", "6", "-"]),
              _buildButtonRow(["1", "2", "3", "+"]),
              _buildButtonRow(["0", "00", ".", "="]),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildButtonRow(List<String> buttons) { // Define um método que constrói uma linha de botões.
    return Row( // Retorna um Row, que é um widget que exibe seus filhos em uma linha horizontal.
      mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Alinha os filhos igualmente espaçados na linha.
      children: buttons.map((String buttonText) { // Mapeia a lista de strings de botões para uma lista de widgets CalculatorButton.
        return CalculatorButton(
          text: buttonText,
          onTap: () => _onButtonPressed(buttonText), // Define a função que é chamada quando o botão é pressionado.
        );
      }).toList(), // Converte o Iterable retornado por map para uma lista.
    );
  }
}
