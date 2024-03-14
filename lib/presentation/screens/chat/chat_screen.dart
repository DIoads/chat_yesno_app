import 'package:chat_yesno_app/domain/entities/message.dart';
import 'package:chat_yesno_app/presentation/providers/chat_provider.dart';
import 'package:chat_yesno_app/presentation/shared/message_field_box.dart';
import 'package:chat_yesno_app/presentation/widgets/cheems_message_bubble.dart';
import 'package:chat_yesno_app/presentation/widgets/my_message_bubble.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
          centerTitle: false,
        ),
        body: const _ChatView());
  }
}

class _ChatView extends StatelessWidget {
  const _ChatView();

  @override
  Widget build(BuildContext context) {
    final ChatProvider chatProvider = context.watch<ChatProvider>();

    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(221, 63, 113, 136),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Expanded(
                  child: ListView.builder(
                      controller: chatProvider.controller,
                      itemCount: chatProvider.messageList.length,
                      itemBuilder: ((context, index) {
                        return (chatProvider.messageList[index].fromWho ==
                                FromWho.cheems)
                            ? CheemsMessageBubble(
                                message: chatProvider.messageList[index])
                            : MyMessageBubble(
                                message: chatProvider.messageList[index],
                              );
                      }))),
              MessageFieldBox(
                onValue: (value) => chatProvider.sendMessage(value),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
