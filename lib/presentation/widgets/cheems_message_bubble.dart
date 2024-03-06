import 'package:chat_yesno_app/presentation/widgets/loading_animation.dart';
import 'package:flutter/material.dart';

class CheemsMessageBubble extends StatelessWidget {
  const CheemsMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
              color: colors.primary, borderRadius: BorderRadius.circular(20)),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              "Mensajes",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const _ImageBubble(),
        const SizedBox(
          height: 10,
        )
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {
  const _ImageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    print("ancho ${size.width}=${size.width * 0.4}");
    print("alto ${size.height}=${size.height * 0.2}");
    final contextwidth = size.width * 0.4;
    final contextheight = size.height * 0.2;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        width: contextwidth,
        height: contextheight,
        fit: BoxFit.cover,
        'https://www.coca-cola.com/content/dam/onexp/mx/es/brands/coca-cola/coca-cola-original/Product-Information-Section-Coca-Cola-Original.jpg',
        loadingBuilder: (context, child, loadingProgress) =>
            (loadingProgress == null)
                ? child
                : Container(
                    width: contextwidth,
                    height: contextheight,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: const loading_animation(),
                  ),
      ),
    );
  }
}
