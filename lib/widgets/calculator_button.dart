import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget { // Define uma classe CalculatorButton que estende StatelessWidget.
  final String text; // Define uma variável final text que armazena o texto do botão.
  final VoidCallback onTap; // Define uma variável final onTap que armazena a função que é chamada quando o botão é pressionado.

  const CalculatorButton({ // Define um construtor que recebe o texto e a função como argumentos.
    super.key,
    required this.text,
    required this.onTap,
  });

  bool isOperation() { // Define um método que verifica se o texto do botão é uma operação.
    return ['+', '-', '*', '/', 'C', '^', '!', 'x', '='].contains(text);
  }

  @override
  Widget build(BuildContext context) { // Define o método build que constrói o widget.
    Color buttonColor = isOperation() ? Colors.green : Colors.white; // Define a cor do botão com base em se o texto do botão é uma operação.

    return Expanded( // Retorna um Expanded, que é um widget que preenche o espaço disponível.
      child: Container( // Define o filho do Expanded como um Container.
        margin: const EdgeInsets.all(8), // Define a margem do Container.
        child: MaterialButton( // Define o filho do Container como um MaterialButton.
          onPressed: onTap, // Define a função que é chamada quando o botão é pressionado.
          color: buttonColor, // Define a cor do botão.
          textColor: const Color.fromARGB(255, 28, 28, 28), // Define a cor do texto do botão.
          shape: RoundedRectangleBorder( // Define a forma do botão como um retângulo com bordas arredondadas.
            borderRadius: BorderRadius.circular(10),
          ),
          padding: const EdgeInsets.all(20), // Define o padding do botão.
          child: Text( // Define o filho do botão como um Text widget que exibe o texto do botão.
            text,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold), // Define o estilo do texto.
          ),
          elevation: 5, // Define a elevação do botão.
        ),
      ),
    );
  }
}
