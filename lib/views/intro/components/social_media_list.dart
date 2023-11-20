
import 'package:flutter/material.dart';
import 'package:flutter_portfolio_webapp/res/constants.dart';
import 'package:flutter_portfolio_webapp/views/intro/components/social_media_column.dart';

class SocialMediaIconList extends StatelessWidget {
  const SocialMediaIconList({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Column(
      children: [
        const Spacer(),
        RotatedBox(
          quarterTurns: -3,
          child: Text(
            "Follow Me",
            style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
          ),
        ),
        Container(
          height: size.height * .06,
          width: 3,
          margin: const EdgeInsets.symmetric(vertical: defaultPadding * .5),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(defaultPadding),
          ),
        ),
        const SocialMediaIconColumn(),
        const Spacer(),
      ],
    );
  }
}
