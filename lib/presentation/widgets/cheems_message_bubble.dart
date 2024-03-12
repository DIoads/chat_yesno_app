import 'package:chat_yesno_app/presentation/widgets/animations/loading_animation.dart';
import 'package:flutter/material.dart';

class CheemsMessageBubble extends StatelessWidget {
  final String message;
  final String? imageUrl;
  const CheemsMessageBubble({super.key, required this.message, this.imageUrl});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
              color: colors.primary, borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              message,
              style: const TextStyle(color: Colors.black),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        _ImageBubble(imageUrl),
        const SizedBox(
          height: 10,
        )
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {
  final String? imageUrl;
  const _ImageBubble(this.imageUrl);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final contextwidth = size.width * 0.4;
    final contextheight = size.height * 0.2;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        width: contextwidth,
        height: contextheight,
        fit: BoxFit.cover,
        imageUrl!,
        loadingBuilder: (context, child, loadingProgress) => (loadingProgress ==
                null)
            ? child
            : Container(
                width: contextwidth,
                height: contextheight,
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: LoadingAnimation(relativeSize: (contextheight * 0.25)),
              ),
      ),
    );
  }
}
