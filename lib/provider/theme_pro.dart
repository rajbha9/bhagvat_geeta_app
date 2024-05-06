import 'package:bhagvat_geeta/models/theme_model.dart';
import 'package:flutter/cupertino.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeModel themeModel = ThemeModel(isLight: false);

  void changeTheme() {
    themeModel.isLight = !themeModel.isLight;
    notifyListeners();
  }
}
