<hr>
<img src="/calculadora/lib/assets/Screenshot 2024-05-24 194738.png">
<img src="/calculadora/lib/assets/Screenshot 2024-05-24 195113.png">
<hr>
<img src="/calculadora/assets/Screenshot 2024-05-24 194738.png">
# Calculadora Flutter


Este é um aplicativo de calculadora simples construído com Flutter. Ele usa o padrão de 
gerenciamento de estado Provider para gerenciar o estado do aplicativo.

## Estrutura do Projeto

O projeto é organizado nos seguintes diretórios:

- `lib/models`: Contém os modelos de dados usados no aplicativo.
- `lib/views`: Contém as telas do aplicativo.
- `lib/widgets`: Contém os widgets reutilizáveis usados nas telas.

## Descrição dos Arquivos

- Em resumo, main.dart inicia o aplicativo e fornece Calculator e ThemeModel para seus descendentes. 
- HomeView usa esses modelos para realizar cálculos e alternar temas. Quando um botão é pressionado 
- em HomeView, ele chama o método buttonPressed em Calculator, que realiza o cálculo e atualiza o estado. 
- HomeView também pode navegar para HistoryView, que exibe o histórico de cálculos. CalculatorButton é 
- um widget reutilizável que representa um botão na calculadora.

- `main.dart`: Este é o ponto de entrada do aplicativo. Ele configura os provedores para `ThemeModel` e `Calculator` e inicia o aplicativo com - -  - `HomeView` como a primeira tela.
- `models/calculator.dart`: Este é o modelo que mantém o estado da calculadora. Ele contém a lógica para realizar cálculos e atualizar o estado.
- `models/theme_model.dart`: Este é o modelo que mantém o estado do tema atual. Ele pode alternar entre o tema claro e escuro.
- `views/home_view.dart`: Esta é a tela principal do aplicativo. Ela usa o `Calculator` e `ThemeModel` do Provider para realizar cálculos e alternar temas.
- `views/history_view.dart`: Esta é a tela que exibe o histórico de cálculos. Ela recebe o histórico do `Calculator` e o exibe em uma lista.
- `widgets/calculator_button.dart`: Este é um widget reutilizável que representa um botão na calculadora.

## Como o Projeto Funciona

Quando o aplicativo é iniciado, `main.dart` configura os provedores para `Calculator` e `ThemeModel` e inicia o aplicativo com `HomeView` como a primeira tela.

`HomeView` usa o `Calculator` e `ThemeModel` do Provider para realizar cálculos e alternar temas. Quando um botão é pressionado em `HomeView`, ele chama o método `buttonPressed` em `Calculator`, que realiza o cálculo e atualiza o estado. `HomeView` também pode navegar para `HistoryView`, que exibe o histórico de cálculos.

`CalculatorButton` é um widget reutilizável que representa um botão na calculadora. Ele recebe um texto e uma função de toque como argumentos. A função de toque é chamada quando o botão é pressionado.

## Como Executar o Projeto

Para executar este projeto, você precisa ter o Flutter e Dart configurados em seu ambiente. Depois de clonar o repositório, você pode executar o projeto com o comando `flutter run` no terminal.

## Recursos Adicionais

Se este é o seu primeiro projeto Flutter, aqui estão alguns recursos para ajudá-lo a começar:

- [Lab: Escreva seu primeiro aplicativo Flutter](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Exemplos úteis de Flutter](https://docs.flutter.dev/cookbook)

Para obter ajuda para começar a desenvolver com Flutter, consulte a [documentação online](https://docs.flutter.dev/), que oferece tutoriais, exemplos, orientações sobre desenvolvimento móvel e uma referência completa da API.
