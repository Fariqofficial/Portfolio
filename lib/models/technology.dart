import 'package:my_portfolio/utils/constants.dart';

class TechnologyModel {
  final String name;
  final String logo;

  TechnologyModel(this.name, this.logo);
}

class TechnologyConstants {
  static TechnologyModel java = TechnologyModel("Java", AppConstants.javaImage);
  static TechnologyModel laravel =
      TechnologyModel("Laravel", AppConstants.laravelImage);
  static TechnologyModel flutter =
      TechnologyModel("Flutter", AppConstants.flutterImage);
  static TechnologyModel firebase =
      TechnologyModel("Firebase", AppConstants.firebaseImage);
  static TechnologyModel javascript =
      TechnologyModel("Javascript", AppConstants.javascriptImage);
  static TechnologyModel dart = TechnologyModel("Dart", AppConstants.dartImage);
  static TechnologyModel anstudio =
      TechnologyModel("Android Studio", AppConstants.astudioImage);
  static TechnologyModel postman =
      TechnologyModel("Postman", AppConstants.postmanImage);
  static TechnologyModel vstudio =
      TechnologyModel("Visual Studio Code", AppConstants.vstudioImage);
  static TechnologyModel sql = TechnologyModel("SQL", AppConstants.sqlImage);
  static TechnologyModel git = TechnologyModel("Git", AppConstants.gitImage);
  static TechnologyModel figma =
      TechnologyModel("Figma", AppConstants.figmaImage);
  static TechnologyModel windows =
      TechnologyModel("Windows", AppConstants.windowsImage);

  static List<TechnologyModel> technologyLearned = [
    flutter,
    dart,
    firebase,
    java,
    laravel,
    javascript,
    anstudio,
    vstudio,
    git,
    figma,
    sql,
    postman,
    windows
  ];
}
