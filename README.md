# Contador de Estado

Este é um projeto Flutter que demonstra o uso de um widget builder e um gerenciador de estado personalizado para facilitar o controle de estado em aplicativos Flutter.

## Widget Builder e State

O `StateBuilder` é um widget personalizado que simplifica a construção de widgets dinâmicos com base no estado atual. Ele é projetado para trabalhar em conjunto com o `ValuesState`, que fornece uma estrutura para representar o estado da aplicação de forma clara e concisa.

### Widget Builder

O `StateBuilder` permite uma construção flexível de widgets com base no estado atual da aplicação. Ele oferece suporte a três cenários principais:

- **Erro**: Se ocorrer um erro durante a obtenção ou processamento dos dados, o widget builder associado ao erro será acionado para lidar com a exibição do erro.
- **Dados Disponíveis**: Quando os dados estão disponíveis e prontos para serem exibidos, o widget builder associado aos dados será chamado para renderizar a interface com base nesses dados.
- **Carregamento**: Durante o carregamento dos dados, um widget de carregamento pode ser exibido usando o widget builder associado ao carregamento.

### Estado Personalizado (ValuesState)

O `ValuesState` é uma classe abstrata que encapsula o estado da aplicação. Ele fornece informações sobre os dados, erros e status de carregamento, facilitando o controle e a manipulação do estado em toda a aplicação.

## Como Executar o Projeto

Para executar este projeto em seu ambiente local, siga as instruções abaixo:

### Pré-requisitos

Certifique-se de ter o Flutter e o Dart instalados em sua máquina. Você pode encontrar instruções de instalação [aqui](https://flutter.dev/docs/get-started/install).

### Passos

1. Clone este repositório em seu ambiente local:

   ```
   git clone https://github.com/edilson-rodrigues/flutter_count_state.git
   ```

2. Navegue até o diretório do projeto:

   ```
   cd flutter_count_state
   ```

3. Instale as dependências do projeto:

   ```
   flutter pub get
   ```

4. Execute o aplicativo em um dispositivo ou emulador:

   ```
   flutter run
   ```

Isso iniciará o aplicativo em seu dispositivo ou emulador e você poderá ver o contador de estado em ação.

## Especificações do Flutter e Dart

Este projeto foi desenvolvido usando as seguintes versões do Flutter e Dart:

- Flutter SDK >= 3.3.4 < 4.0.0
- Dart SDK >= 2.10.0 < 3.0.0

Certifique-se de ter as versões compatíveis instaladas em sua máquina para garantir a compatibilidade com o projeto.