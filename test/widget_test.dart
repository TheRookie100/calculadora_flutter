import 'package:flutter_test/flutter_test.dart';
import 'package:calculadora/models/calculator.dart';
void main() {
  group('Calculator', () { /* o que faz parte do grupo de testes */
    Calculator calculator = Calculator();

    setUp(() {
      calculator = Calculator();
    });

    test('should perform addition correctly', () {
      calculator.buttonPressed('1');
      calculator.buttonPressed('+');
      calculator.buttonPressed('2');
      calculator.buttonPressed('=');
      expect(calculator.output, '3');
    });

    test('should perform subtraction correctly', () {
      calculator.buttonPressed('5');
      calculator.buttonPressed('-');
      calculator.buttonPressed('2');
      calculator.buttonPressed('=');
      expect(calculator.output, '3');
    });

    test('should perform multiplication correctly', () {
      calculator.buttonPressed('3');
      calculator.buttonPressed('x');
      calculator.buttonPressed('2');
      calculator.buttonPressed('=');
      expect(calculator.output, '6');
    });

    test('should perform division correctly', () {
      calculator.buttonPressed('8');
      calculator.buttonPressed('/');
      calculator.buttonPressed('2');
      calculator.buttonPressed('=');
      expect(calculator.output, '4');
    });

    test('should handle decimal numbers correctly', () {
      calculator.buttonPressed('1');
      calculator.buttonPressed('.');
      calculator.buttonPressed('5');
      calculator.buttonPressed('+');
      calculator.buttonPressed('2');
      calculator.buttonPressed('.');
      calculator.buttonPressed('5');
      calculator.buttonPressed('=');
      expect(calculator.output, '4');
    });

    test('should handle clear operation correctly', () {
      calculator.buttonPressed('1');
      calculator.buttonPressed('+');
      calculator.buttonPressed('2');
      calculator.buttonPressed('C');
      expect(calculator.output, '0');
    });
        test('should perform power operation correctly', () {
      calculator.buttonPressed('2');
      calculator.buttonPressed('^');
      calculator.buttonPressed('3');
      calculator.buttonPressed('=');
      expect(calculator.output, '8');
    });

    test('should perform factorial operation correctly', () {
      calculator.buttonPressed('5');
      calculator.buttonPressed('!');
      calculator.buttonPressed('=');
      expect(calculator.output, '120');
    });
  });
}


/* 
1.	import 'package:flutter_test/flutter_test.dart'; - Esta linha importa o pacote flutter_test, que fornece uma 
série de funções e classes úteis para escrever testes de unidade em Flutter.

2.	import 'package:projeto/models/calculator.dart'; - Esta linha importa a classe Calculator 
do seu projeto, que é o que você está testando.

3.	void main() { ... } - A função main é o ponto de entrada para os testes. Quando você executa seus testes, 
o código dentro de main é o que é executado.

4.	group('Calculator', () { ... }); - A função group é usada para agrupar testes relacionados. 
Neste caso, todos os testes dentro deste grupo estão testando a classe Calculator.

5.	Calculator calculator = Calculator(); - Esta linha cria uma instância da classe Calculator que será usada nos testes.

6.	setUp(() { ... }); - A função setUp é chamada antes de cada teste ser executado. Neste caso, ele está sendo usado para 
criar uma nova instância da classe Calculator antes de cada teste, garantindo que cada teste seja executado com um estado limpo.

7.	test('should perform addition correctly', () { ... }); - A função test define um único teste. O primeiro argumento 
é uma descrição do que o teste está verificando, e o segundo argumento é uma função que contém o código do teste.

8.	calculator.buttonPressed('1'); - Esta linha simula o pressionamento do botão '1' na calculadora.

9.	expect(calculator.output, '3'); - A função expect verifica se o primeiro argumento é igual ao segundo argumento. 
Se eles não forem iguais, o teste falha. Neste caso, ele está verificando se a saída da calculadora é '3' após pressionar 
os botões '1', '+', '2' e '='.

Os outros testes seguem o mesmo padrão: eles simulam o pressionamento de botões na calculadora e verificam se 
a saída é a esperada. Cada teste verifica uma operação diferente (subtração, multiplicação, divisão, etc.).



*/