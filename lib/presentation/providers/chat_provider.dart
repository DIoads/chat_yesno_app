import 'package:chat_yesno_app/domain/entities/message.dart';
import 'package:flutter/material.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> messageList = [
    Message(
        text: "hello bro",
        fromWho: FromWho.cheems,
        imageURL:
            "https://www.the-sun.com/wp-content/uploads/sites/6/2023/10/www-instagram-com-monkeycatluna-hl-851711797.jpg"),
    Message(text: "whats up my pa", fromWho: FromWho.me),
    Message(
        text: "funny meme",
        fromWho: FromWho.cheems,
        imageURL:
            "https://www.coca-cola.com/content/dam/onexp/mx/es/brands/coca-cola/coca-cola-original/Product-Information-Section-Coca-Cola-Original.jpg"),
    Message(text: "haha", fromWho: FromWho.me)
  ];

  Future<void> sendMessage(String text) async {
    final newMessage = Message(text: text, fromWho: FromWho.me);
    messageList.add(newMessage);
    notifyListeners();
  }
}
