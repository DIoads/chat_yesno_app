import 'package:flutter/material.dart';

import 'config/theme/app_theme.dart';
import 'presentation/screens/chat/chat_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'YES NO APP ',
        debugShowCheckedModeBanner: false,
        theme: Apptheme(selectColor: 1).theme(),
        home: const chat());
  }
}
