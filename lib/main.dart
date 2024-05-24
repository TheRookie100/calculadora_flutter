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
// Em Dart e Flutter, super é usado para se referir à superclasse de uma classe. No caso de MyApp, a superclasse é StatelessWidget.
//Se você quiser passar uma chave para o construtor da superclasse. Você pode fazer isso usando super.key.
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


/* 

1.	import 'package:flutter/material.dart'; - Importa a biblioteca Material Design do Flutter, que contém uma 
coleção de widgets que seguem as diretrizes de design do Material Design.

2.	import 'package:provider/provider.dart'; - Importa a biblioteca Provider, que é uma biblioteca popular 
para gerenciamento de estado em Flutter.

3.	import 'views/home_view.dart'; - Importa o arquivo home_view.dart do diretório views. Este arquivo contém 
a definição da tela principal do aplicativo.

4.	import 'models/theme_model.dart'; - Importa o arquivo theme_model.dart do diretório models. 
Este arquivo contém a definição do modelo de dados para o tema do aplicativo.

5.	import 'models/calculator.dart'; - Importa o arquivo calculator.dart do diretório models. 
Este arquivo contém a definição do modelo de dados para a calculadora.

6.	void main() { - Define a função main, que é o ponto de entrada do aplicativo Flutter.

7.	runApp( - Esta função inicia o aplicativo Flutter.

8.	MultiProvider( - Este widget é usado para fornecer múltiplos objetos para todos os widgets filhos.

9.	providers: [ - Define a lista de objetos a serem fornecidos.

10.	ChangeNotifierProvider( - Este widget é usado para fornecer uma instância de ThemeModel para todos os widgets filhos.

11.	create: (context) => ThemeModel(), - Cria uma nova instância de ThemeModel.

12.	ChangeNotifierProvider( - Este widget é usado para fornecer uma instância de Calculator para todos os widgets filhos.

13.	create: (context) => Calculator(), - Cria uma nova instância de Calculator.

14.	child: MyApp(), - Define o widget filho do MultiProvider. Este é o widget que será renderizado abaixo do MultiProvider.

15.	class MyApp extends StatelessWidget { - Define a classe MyApp, que é um widget sem estado. 
Um widget sem estado é um widget que descreve parte da interface do usuário que pode depender 
de configuração, mas não depende do estado em execução.

16.	const MyApp({super.key}); - Este é o construtor para a classe MyApp. Ele aceita 
um argumento nomeado key que é passado para a superclasse StatelessWidget.

17.	@override - Esta anotação indica que a função build está substituindo uma 
função com o mesmo nome na superclasse.

18.	Widget build(BuildContext context) { - Define o método build, 
que retorna o widget que este widget apresentará.

19.	final themeModel = Provider.of<ThemeModel>(context); - 
Obtém a instância de ThemeModel do Provider.

20.	return MaterialApp( - Retorna um MaterialApp, que é o widget raiz do aplicativo.

21.	debugShowCheckedModeBanner: false, - Remove a faixa de debug do canto superior direito.

22.	title: 'Calculadora', - Define o título do aplicativo.

23.	theme: themeModel.currentTheme, - Define o tema do aplicativo usando o ThemeModel.

24.	home: const HomeView(), - Define a HomeView como a tela inicial do aplicativo.








*/