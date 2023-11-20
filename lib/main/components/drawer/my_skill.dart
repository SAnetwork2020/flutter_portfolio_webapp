import 'package:flutter/material.dart';
import 'package:flutter_portfolio_webapp/gen/assets.gen.dart';
import 'package:flutter_portfolio_webapp/res/constants.dart';

class AnimationLinearProgressIndicator extends StatelessWidget {
  const AnimationLinearProgressIndicator(
      {super.key, required this.percentage, required this.title, this.image});
  final double percentage;
  final String title;
  final String? image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2.0),
      child: TweenAnimationBuilder(
          tween: Tween(begin: .0, end: percentage),
          duration: const Duration(seconds: 1),
          builder: (context, value, child) {
            return Column(
              children: [
                Row(
                  children: [
                    Image.asset(image!,
                        height: 15, width: 15, fit: BoxFit.cover),
                    const SizedBox(width: 5),
                    Text(
                      title,
                      style: const TextStyle(color: Colors.white),
                    ),
                    const Spacer(),
                    Text(
                      "${(value * 100).toInt()}%",
                    ),
                  ],
                ),
                const SizedBox(height: defaultPadding / 2),
                LinearProgressIndicator(
                  value: value,
                  backgroundColor: Colors.black,
                  color: Colors.amberAccent,
                ),
              ],
            );
          }),
    );
  }
}

class MySkills extends StatelessWidget {
  const MySkills({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AnimationLinearProgressIndicator(
          percentage: .80,
          title: 'Flutter',
          image: Assets.icons.flutter.path,
        ),
        AnimationLinearProgressIndicator(
          percentage: .70,
          title: 'Dart',
          image: Assets.icons.dart.path,
        ),
        AnimationLinearProgressIndicator(
          percentage: .40,
          title: 'Firebase',
          image: Assets.icons.firebase.path,
        ),
        AnimationLinearProgressIndicator(
          percentage: .60,
          title: 'Riverpod',
          image: Assets.icons.flutter.path,
        ),
        AnimationLinearProgressIndicator(
          percentage: .70,
          title: 'Responsive Design',
          image: Assets.icons.flutter.path,
        ),
        AnimationLinearProgressIndicator(
          percentage: .70,
          title: 'Clean Architecture',
          image: Assets.icons.flutter.path,
        ),
        AnimationLinearProgressIndicator(
          percentage: .10,
          title: 'Getx',
          image: Assets.icons.flutter.path,
        ),
      ],
    );
  }
}
