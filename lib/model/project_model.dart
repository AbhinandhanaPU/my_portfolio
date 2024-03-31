class ProjectModel {
  final String title;
  final String subTitle;
  final String gitLink;

  ProjectModel({
    required this.title,
    required this.subTitle,
    required this.gitLink,
  });
}

// project details
List<ProjectModel> projectDetails = [
  ProjectModel(
    title: "Book Reader",
    subTitle:
        "Book Reader is a mobile application developed using the Flutter framework, designed to provide users with access to a vast collection of books available through the Google Books API.",
    gitLink: "https://github.com/AbhinandhanaPU/ebook_apk",
  ),
  ProjectModel(
    title: "Notes App",
    subTitle:
        "Notes App is a simple mobile application designed to help users take notes and manage their to-do lists conveniently.",
    gitLink: "https://github.com/AbhinandhanaPU/notes_app_hive",
  ),
  ProjectModel(
    title: "News Reader",
    subTitle:
        " It serves as a platform for users to read news articles from various sources conveniently.Search functionality allows users to find news articles based on keywords.",
    gitLink: "https://github.com/AbhinandhanaPU/news_reader",
  ),
  ProjectModel(
    title: "Tic-Tac-Toe-Game",
    subTitle:
        "Flutter Tic Tac Toe is a simple mobile application developed using the Flutter framework. It allows two players to play the classic Tic-Tac-Toe game on their mobile devices.",
    gitLink: "https://github.com/AbhinandhanaPU/Tic-Tac-Toe-Game",
  ),
  ProjectModel(
    title: "Netflix Clone",
    subTitle:
        "The Netflix App UI Clone repository is a project that replicates the user interface of the popular streaming platform, Netflix. This repository serves as a comprehensive resource for developers interested in understanding and recreating the visually appealing and feature-rich Netflix interface made using Flutter.",
    gitLink: "https://github.com/AbhinandhanaPU/netflix_clone",
  ),
  ProjectModel(
    title: "Take Quiz",
    subTitle:
        "This Flutter app allows users to take quizzes on various topics. It provides multiple-choice questions with options for users to select answers. The app keeps track of the user's score and displays it at the end of the quiz.",
    gitLink: "https://github.com/AbhinandhanaPU/quiz_app",
  ),
];
