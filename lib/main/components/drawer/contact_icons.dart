
import 'package:flutter/material.dart';
import 'package:flutter_portfolio_webapp/gen/assets.gen.dart';
import 'package:flutter_portfolio_webapp/res/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactIcon extends StatelessWidget {
  const ContactIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: defaultPadding),
      child: Row(
        children: [
          Spacer(),
          IconButton(
            onPressed: () {
              launchUrl(Uri.parse(
                  "https://www.linkedin.com/in/abdulganiyu-sulyman-72b2131a9/"));
            },
            icon: Assets.icons.linkedin.svg(),
          ),
          IconButton(
            onPressed: () {
              launchUrl(Uri.parse("https://twitter.com/SulymanAbdulgan"));
            },
            icon: Assets.icons.twitter.svg(),
          ),
          IconButton(
            onPressed: () {
              launchUrl(Uri.parse("https://github.com/SAnetwork2020"));
            },
            icon: Assets.icons.github.svg(),
          ),
          Spacer(),
        ],
      ),
    );
  }
}