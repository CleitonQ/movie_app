# Movie App

Um projeto em Flutter que exibe uma lista de filmes, com detalhes como nome, duração, gênero e comentários. Este aplicativo utiliza o pacote `Dio` para chamadas à API e `GetIt` para injeção de dependências.

## Funcionalidades
- Busca dados de filmes a partir de uma API.
- Exibe o nome, duração, gênero e ano dos filmes.
- Utiliza `StreamBuilder` para carregar dinamicamente a lista de filmes.
- Exibe comentários dos filmes.

## Capturas de Tela
![Tela do Movie App](screenshots/screenshot1.png)
![Tela do Movie App](screenshots/screenshot2.png)

## Tecnologias Utilizadas
- Flutter 3.x
- Dio para requisições HTTP
- GetIt para Injeção de Dependências
- StreamController para gerenciamento de dados assíncronos
- Material Design

## Começando

### Pré-requisitos
Antes de começar, certifique-se de ter os seguintes itens instalados:
- SDK do Flutter: [Guia de Instalação](https://flutter.dev/docs/get-started/install)
- SDK do Dart (vem junto com o Flutter)
- Android Studio ou Visual Studio Code (recomendado o VS Code)

### Instalação
Clone o repositório:

```bash
git clone https://github.com/CleitonQ/movie_app.git
```
```bash
cd movie_app
```

Instale as dependências:

bash
Copiar código
```bash
flutter pub get
```
Rodando o Projeto
Para rodar o aplicativo, utilize o seguinte comando:

bash
Copiar código
```bash
flutter run
```
Isso irá executar o aplicativo no dispositivo ou emulador conectado.

Configuração da API
Este projeto comunica-se com a API para buscar os dados dos filmes. O endpoint da API utilizado é:

plaintext
Copiar código
```bash
https://apifilmes.webevolui.com
```
Certifique-se de que você tem acesso à internet enquanto estiver rodando o aplicativo. A API retorna uma lista de filmes, que será exibida no aplicativo.

Estrutura de Arquivos
css
Copiar código
```bash
lib/
│
├── data/
│   ├── models/
│   │   ├── movie.dart
│   │   └── movie_comment.dart
│   └── movie_api.dart
│
├── pages/
│   ├── movie_list/
│   │   ├── widgets/
│   │   │   └── movie_item_widget.dart
│   │   └── movie_list_page.dart
│   └── service_locator.dart
│
├── main.dart
└── utils.dart
```

## Principais Classes e Widgets
MovieListPage: A tela principal que exibe a lista de filmes.

MovieItemWidget: Um widget que exibe os detalhes de um filme individual.

MovieApi: Responsável pelas requisições à API para buscar os filmes.

MovieListController: Gerencia a lógica e o estado da lista de filmes.

Service Locator: Gerencia a injeção de dependências usando o pacote GetIt.

## 📇 Créditos

<p align="center">
  Desenvolvido com 💙 por <strong>Cleiton Queiroz</strong>
</p>

<p align="center">
  <a href="https://www.linkedin.com/in/cleitonqueiroz-dev" target="_blank">
    <img src="https://img.shields.io/badge/-LinkedIn-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white" alt="LinkedIn">
  </a>
  <a href="https://github.com/CleitonQ" target="_blank">
    <img src="https://img.shields.io/badge/-GitHub-181717?style=for-the-badge&logo=github&logoColor=white" alt="GitHub">
  </a>
  <a href="https://wa.me/5515996295847" target="_blank">
    <img src="https://img.shields.io/badge/-WhatsApp-25D366?style=for-the-badge&logo=whatsapp&logoColor=white" alt="WhatsApp">
  </a>
</p>
