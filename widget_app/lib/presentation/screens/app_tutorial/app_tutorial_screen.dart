import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;

  SlideInfo(this.title, this.caption, this.imageUrl);
}

final slides = <SlideInfo>[
  SlideInfo(
    'Search your food',
    'Elit ipsum aliqua et et exercitation ex et ea consectetur culpa irure tempor. Sit pariatur incididunt voluptate irure ex minim voluptate ut. Laboris amet veniam consequat dolor excepteur minim id ex duis elit. Mollit ipsum laborum voluptate non labore nulla fugiat incididunt sint pariatur adipisicing aliquip aliquip in. Occaecat proident pariatur labore labore aliqua ullamco reprehenderit.',
    'assets/images/1.png',
  ),
  SlideInfo(
    'Fast deliveried',
    'Ea aliquip aliquip qui cillum id consequat in aute consequat proident qui. Ut est sunt duis voluptate aute exercitation anim fugiat ad occaecat eiusmod ad pariatur. Consectetur ex eu irure consequat officia et nisi esse consectetur reprehenderit exercitation amet ullamco. Deserunt exercitation eu reprehenderit pariatur ipsum culpa tempor sunt ad dolore.',
    'assets/images/2.png',
  ),
  SlideInfo(
    'Enjoy your food men',
    'Fugiat velit do consequat elit esse dolore.',
    'assets/images/3.png',
  ),
];

class AppTutorialScreen extends StatefulWidget {
  static const name = 'tutorial_screen';

  const AppTutorialScreen({super.key});

  @override
  State<AppTutorialScreen> createState() => _AppTutorialScreenState();
}

class _AppTutorialScreenState extends State<AppTutorialScreen> {
  late final PageController pageViewController = PageController();

  bool isTheEnd = false;

  @override
  void initState() {
    super.initState();

    pageViewController.addListener(() {
      final page = pageViewController.page ?? 0;
      if (!isTheEnd && page >= (slides.length - 1.5)) {
        setState(() {
          isTheEnd = true;
        });
      }
    });
  }

  //Siempre despues del initState hay que hacer un dispose para ahorrar memoria
  @override
  void dispose() {
    pageViewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            controller: pageViewController,
            physics: const BouncingScrollPhysics(),
            children: slides
                .map(
                  (slideData) => _Slide(
                    title: slideData.title,
                    caption: slideData.caption,
                    imageUrl: slideData.imageUrl,
                  ),
                )
                .toList(),
          ),

          Positioned(
            right: 20,
            top: 50,
            child: TextButton(
              child: Text('Leave', style: TextStyle(color: Colors.blueAccent)),
              onPressed: () => context.pop(),
            ),
          ),

          isTheEnd
              ? Positioned(
                  bottom: 20,
                  right: 20,
                  child: FadeInRight(
                    from: 20,
                    delay: const Duration(milliseconds: 300),
                    child: FilledButton(
                      onPressed: () => context.pop(),
                      child: Text('Start now!'),
                    ),
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  final String title;
  final String caption;
  final String imageUrl;

  const _Slide({
    required this.title,
    required this.caption,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.bodySmall;

    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(image: AssetImage(imageUrl)),
            const SizedBox(height: 20),
            Text(title, style: titleStyle),
            const SizedBox(height: 20),
            Text(caption, style: captionStyle),
          ],
        ),
      ),
    );
  }
}
