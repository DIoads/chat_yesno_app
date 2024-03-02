import 'package:chat_yesno_app/config/theme/app_theme.dart';
import 'package:chat_yesno_app/config/theme/presentation/screens/chat_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'YAS NO APP ALEJANDRA ',
        debugShowCheckedModeBanner: false,
        theme: Apptheme(selectColor: 1).theme(),
        home: const chat());
  }
}
