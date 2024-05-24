import 'package:flutter/material.dart'; // Importa a biblioteca Material Design do Flutter.
//import 'package:flutter/foundation.dart'; // Importa a biblioteca foundation do Flutter, que contém classes fundamentais como ChangeNotifier.

class ThemeModel extends ChangeNotifier {
  // Define uma classe ThemeModel que estende ChangeNotifier. ChangeNotifier é uma classe simples
// que pode ser usada para notificar ouvintes quando uma mudança ocorrer.
  bool _isDark =
      false; // Define uma variável privada _isDark que armazena se o tema atual é escuro ou não.

  ThemeData get currentTheme => _isDark
      ? ThemeData.dark()
      : ThemeData
          .light(); // Define um getter para currentTheme que retorna ThemeData.dark() se _isDark for verdadeiro, caso contrário retorna ThemeData.light().

  void toggleTheme() {
    // Define uma função que alterna o tema.
    _isDark = !_isDark; // Alterna o valor de _isDark.
    notifyListeners(); // Notifica os ouvintes de que uma mudança ocorreu.
  }
}
