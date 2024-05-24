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