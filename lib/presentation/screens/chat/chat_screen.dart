import 'package:chat_yesno_app/presentation/shared/message_field_box.dart';
import 'package:chat_yesno_app/presentation/widgets/cheems_message_bubble.dart';
import 'package:chat_yesno_app/presentation/widgets/my_message_bubble.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Padding(
            padding: EdgeInsets.all(5),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://s2.coinmarketcap.com/static/img/coins/64x64/10269.png'),
            ),
          ),
          title: const Text("Cheems"),
          centerTitle: true,
        ),
        body: const _ChatView());
  }
}

class _ChatView extends StatelessWidget {
  const _ChatView();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(color: Colors.blueGrey.shade100),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Expanded(
                  child: ListView.builder(
                      itemCount: 101,
                      itemBuilder: ((context, index) {
                        return (index % 2 == 0)
                            ? const MyMessageBubble()
                            : const CheemsMessageBubble();
                      }))),
              const MessageFieldBox(),
            ],
          ),
        ),
      ),
    );
  }
}
