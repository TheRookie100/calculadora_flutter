import 'dart:math'; // Importa a biblioteca de matemática do Dart, que contém funções como pow (potência).
import 'package:flutter/foundation.dart'; // Importa a biblioteca foundation do Flutter, que contém classes fundamentais como ChangeNotifier.

class Calculator extends ChangeNotifier { // Define uma classe Calculator que estende ChangeNotifier. ChangeNotifier é uma classe simples que pode ser usada para notificar ouvintes quando uma mudança ocorrer.
  String _output = "0"; // Define uma variável privada _output que armazena a saída da calculadora como uma string.
  double _num1 = 0.0; // Define uma variável privada _num1 que armazena o primeiro número da operação.
  double _num2 = 0.0; // Define uma variável privada _num2 que armazena o segundo número da operação.
  String _operand = ""; // Define uma variável privada _operand que armazena o operando da operação (por exemplo, "+", "-", "*", "/").
  double _lastResult = 0.0; // Define uma variável privada _lastResult que armazena o último resultado calculado.
  String _operation = ""; // Define uma variável privada _operation que armazena a operação atual como uma string.
  List<String> history = []; // Define uma lista de strings history que armazena o histórico de operações.

  String get output => _operation.isEmpty ? _output : _operation; // Define um getter para output que retorna _operation se não estiver vazia, caso contrário retorna _output.

  String formatNumber(double num) { // Define uma função que formata um número para uma string. Se o número for um inteiro, ele é arredondado. Caso contrário, ele é convertido para uma string como está.
    if (num == num.round()) {
      return num.round().toString();
    } else {
      return num.toString();
    }
  }

  void buttonPressed(String buttonText) { // Define uma função que é chamada quando um botão é pressionado. A lógica dentro desta função depende do texto do botão.
    if (buttonText == "C") { // Se o botão pressionado for "C", a calculadora é resetada.
      _output = "0";
      _num1 = 0.0;
      _num2 = 0.0;
      _operand = "";
      _operation = "";
    } else if (buttonText == "+" || // Se o botão pressionado for um operando, o primeiro número e o operando são armazenados, e a saída é resetada.
        buttonText == "-" ||
        buttonText == "/" ||
        buttonText == "x" ||
        buttonText == "^" ||
        buttonText == "!") {
      _num1 = double.parse(_output);
      _operand = buttonText;
      _operation = "${formatNumber(_num1)} $_operand";
      _output = "0";
    } else if (buttonText == ".") { // Se o botão pressionado for ".", ele é adicionado à saída se a saída ainda não contiver um ".".
      if (!_output.contains(".")) {
        _output += buttonText;
      }
    } else if (buttonText == "=") { // Se o botão pressionado for "=", a operação é realizada e o resultado é armazenado.
      _num2 = double.parse(_output);

      switch (_operand) { // A operação a ser realizada depende do operando.
        case "+":
          _lastResult = _num1 + _num2;
          break;
        case "-":
          _lastResult = _num1 - _num2;
          break;
        case "x":
          _lastResult = _num1 * _num2;
          break;
        case "/":
          _lastResult = _num1 / _num2;
          break;
        case "^":
          _lastResult = pow(_num1, _num2).toDouble();
          break;
        case "!":
          _lastResult = factorial(_num1);
          break;
      }

      _output = formatNumber(_lastResult); // O resultado é formatado e armazenado na saída.
      String resultString = _lastResult == _lastResult.round() // A operação e o resultado são adicionados ao histórico.
          ? _lastResult.round().toString()
          : _lastResult.toString();
      history.add('$_operation = $resultString');
      _operation = ""; // A operação é resetada.
      _num1 = 0.0;
      _num2 = 0.0;
      _operand = "";
    } else { // Se o botão pressionado for um número, ele é adicionado à saída.
      if (_output == "0") {
        _output = buttonText;
      } else {
        _output += buttonText;
      }
      if (_operand.isNotEmpty) { // Se um operando foi pressionado, a operação é atualizada.
        _operation = "${formatNumber(_num1)} $_operand $_output";
      }
    }
    notifyListeners(); // Notifica os ouvintes de que uma mudança ocorreu.
  }

  double factorial(double num) { // Define uma função que calcula o fatorial de um número.
    if (num <= 1) {
      return 1;
    } else {
      return num * factorial(num - 1);
    }
  }
}
