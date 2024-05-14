import 'package:my_portfolio/models/technology.dart';

class ProjectModel {
  final String project;
  final String title;
  final String description;
  final String projectLink;
  final List<TechnologyModel> techUsed;
  final String? buttonText;

  ProjectModel({
    required this.project,
    required this.title,
    required this.description,
    required this.projectLink,
    required this.techUsed,
    this.buttonText,
  });

  static List<ProjectModel> projects = [
    ProjectModel(
      project: "Flutter Project",
      title: "Rukun",
      description:
          "Rukun Rukun is a free mobile-based regional management application. Rukun can be used for housing, clusters, apartments or association organizations.",
      projectLink:
          "https://play.google.com/store/apps/details?id=com.rukun.app",
      techUsed: [
        TechnologyConstants.flutter,
        TechnologyConstants.dart,
      ],
      buttonText: "Check on Playstore",
    ),
    ProjectModel(
      project: "Flutter Project",
      title: "KBstar",
      description:
          "KBStar is a financial services application from Bank Bukopin, KBstar comes with a UI/UX version and the addition of new features in this version.",
      projectLink:
          "https://play.google.com/store/apps/details?id=com.kbBukopin.Kbstar&hl=en_US",
      techUsed: [
        TechnologyConstants.flutter,
        TechnologyConstants.dart,
      ],
      buttonText: "Check on Playstore",
    ),
    ProjectModel(
      project: "Flutter App",
      title: "Travel Holic",
      description:
          "Travelholic is an android application used for booking tickets to tourist destinations. Built with state management Cubit and also using firebase firestore.",
      projectLink: "https://github.com/Fariqofficial/TravelHolic",
      techUsed: [
        TechnologyConstants.flutter,
        TechnologyConstants.dart,
        TechnologyConstants.firebase,
        // TechnologyConstants.linux
      ],
      buttonText: "Check on Github",
    ),
    ProjectModel(
      project: "Android Freelance Project",
      title: "Text Recognition App",
      description:
          "Text Recognition App is an android application can recognize words from images through the cam..",
      projectLink: "https://github.com/Fariqofficial/TextRecognitionApps",
      techUsed: [
        TechnologyConstants.java,
        TechnologyConstants.firebase,
        // TechnologyConstants.linux
      ],
      buttonText: "Check on Github",
    ),
    ProjectModel(
      project: "Android Freelance Project",
      title: "Yuk Vaksin",
      description:
          "Yuk Vaksin is an application for people who want to register for Covid-19 vaccinations. This application is built using the MVP design pattern.",
      projectLink: "https://github.com/Fariqofficial/Yuk-Vaksin",
      techUsed: [
        TechnologyConstants.java,
        TechnologyConstants.firebase,
      ],
      buttonText: "Check on Github",
    ),
  ];
}
