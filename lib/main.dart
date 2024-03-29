import 'package:chat_yesno_app/presentation/providers/chat_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'config/theme/app_theme.dart';
import 'presentation/screens/chat/chat_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => ChatProvider())],
      child: MaterialApp(
          title: 'YES NO APP ',
          debugShowCheckedModeBanner: false,
          theme: Apptheme(selectColor: 2).theme(),
          home: const ChatScreen()),
    );
  }
}
