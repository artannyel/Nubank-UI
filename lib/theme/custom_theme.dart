import 'package:nubank_ui/theme/custom_color.dart';
import 'package:flutter/material.dart';

class CustomTheme with ChangeNotifier {
  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: CustomColor.primaryColor,
      /*buttonColor: CustomColor.buttomColorLight,
      scaffoldBackgroundColor: Colors.white,
      textTheme: ThemeData.light().textTheme,
      iconTheme: IconThemeData(
        color: CustomColor.buttomColorLight,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith(
            (states) {
              const Set<MaterialState> interactiveStates = <MaterialState>{
                MaterialState.disabled,
              };
              return (states.any(interactiveStates.contains))
                  ? Colors.grey
                  : CustomColor.buttomColorLight2;
            },
          ),
          overlayColor: MaterialStateProperty.resolveWith(
            (states) => Colors.black26,
          ),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          overlayColor: MaterialStateProperty.resolveWith(
            (states) => Colors.black26,
          ),
        ),
      ),*/
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      primaryColor: Colors.white,
      /*iconTheme: IconThemeData(
        color: Colors.white,
      ),
      primaryIconTheme: IconThemeData(
        color: Colors.white,
      ),
      accentIconTheme: IconThemeData(
        color: Colors.white,
      ),*/
      /*buttonColor: CustomColor.buttomColorDart,
      scaffoldBackgroundColor: CustomColor.scaffoldBackgroundColorDark,
      textTheme: ThemeData.dark().textTheme,
      iconTheme: IconThemeData(
        color: CustomColor.buttomColorDart,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith(
            (states) {
              const Set<MaterialState> interactiveStates = <MaterialState>{
                MaterialState.disabled,
              };
              return (states.any(interactiveStates.contains))
                  ? Colors.grey
                  : CustomColor.buttomColorDart2;
            },
          ),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          overlayColor: MaterialStateProperty.resolveWith(
            (states) => Colors.white24,
          ),
        ),
      ),*/
    );
  }

  static bool _isDarkTheme = false;

  ThemeMode get currentTheme => _isDarkTheme ? ThemeMode.dark : ThemeMode.light;

  bool get isDartThem => _isDarkTheme;

  void toggleTheme() {
    _isDarkTheme = !_isDarkTheme;
    notifyListeners();
  }
}
