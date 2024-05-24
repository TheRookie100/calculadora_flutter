import 'package:flutter/material.dart'; // Importa a biblioteca Material Design do Flutter.
import 'package:provider/provider.dart'; // Importa a biblioteca Provider, que é usada para gerenciamento de estado.
import 'views/home_view.dart'; // Importa a HomeView, que é a tela principal do aplicativo.
import 'models/theme_model.dart'; // Importa o ThemeModel, que é usado para alternar entre temas claro e escuro.
import 'models/calculator.dart'; // Importa o Calculator, que é usado para realizar cálculos.

void main() { // Define a função main, que é o ponto de entrada do aplicativo.
  runApp( // Inicia o aplicativo.
    MultiProvider( // Usa um MultiProvider para fornecer múltiplos objetos para todos os widgets filhos.
      providers: [ // Define a lista de objetos a serem fornecidos.
        ChangeNotifierProvider( // Fornece uma instância de ThemeModel.
          create: (context) => ThemeModel(),
        ),
        ChangeNotifierProvider( // Fornece uma instância de Calculator.
          create: (context) => Calculator(),
        ),
      ],
      child: MyApp(), // Define o widget filho do MultiProvider.
    ),
  );
}

class MyApp extends StatelessWidget { // Define a classe MyApp, que é um widget sem estado.
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) { // Define o método build, que constrói o widget.
    final themeModel = Provider.of<ThemeModel>(context); // Obtém a instância de ThemeModel do Provider.
    return MaterialApp( // Retorna um MaterialApp, que é o widget raiz do aplicativo.
      debugShowCheckedModeBanner: false, // Remove a faixa de debug do canto superior direito.
      title: 'Calculadora', // Define o título do aplicativo.
      theme: themeModel.currentTheme, // Define o tema do aplicativo usando o ThemeModel.
      home: const HomeView(), // Define a HomeView como a tela inicial do aplicativo.
    );
  }
}