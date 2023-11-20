import 'package:flutter/material.dart';
import 'package:flutter_portfolio_webapp/gen/assets.gen.dart';
import 'package:flutter_portfolio_webapp/views/intro/components/social_icon.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaIconColumn extends StatelessWidget {
  const SocialMediaIconColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SocialMediaIcon(
          icon: Assets.icons.linkedin.path,
          onTap: () => launchUrl(Uri.parse(
              "https://www.linkedin.com/in/abdulganiyu-sulyman-72b2131a9/")),
        ),
        SocialMediaIcon(
          icon: Assets.icons.twitter.path,
          onTap: () =>
              launchUrl(Uri.parse("https://twitter.com/SulymanAbdulgan")),
        ),
        SocialMediaIcon(
          icon: Assets.icons.github.path,
          onTap: () => launchUrl(Uri.parse("https://github.com/SAnetwork2020")),
        ),
      ],
    );
  }
}
