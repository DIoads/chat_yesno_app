import 'package:chat_yesno_app/domain/entities/message.dart';
import 'package:flutter/material.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> messageList = [
    Message(text: "hello world", fromWho: FromWho.cheems),
    Message(text: "hello world 2 u 2", fromWho: FromWho.me)
  ];
}
