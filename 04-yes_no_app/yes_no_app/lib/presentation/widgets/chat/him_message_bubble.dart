import 'package:flutter/material.dart';

class HimMessageBubble extends StatelessWidget {
  const HimMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.secondary,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              'I am the fat nahu',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        const SizedBox(height: 5),

        _ImageBubble(),

        SizedBox(height: 10),

        //Todo: imagen
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {
  final String gif =
      'https://yesno.wtf/assets/no/21-05540164de4e3229609f106e468fa8e7.gif';

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    // print(size);
    // Builder es algo que se crea al momento de iniciar la aplicacion

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        gif, 
        width: size.width * 0.7,
        height: 150,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) {
          if(loadingProgress == null) return child;

          return Container(
            width: size.width * 0.7,
            height: 150,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            // child: const Center(
            //   child: CircularProgressIndicator.adaptive(),
            // ),
            child: const Text('Sending an image...'),
          );
        },
      ),
    );
  }
}
