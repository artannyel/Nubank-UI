import 'package:flutter/material.dart';
import 'package:nubank_ui/theme/custom_theme.dart';
import 'package:nubank_ui/views/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nubank UI',
      theme: CustomTheme.lightTheme,
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}
