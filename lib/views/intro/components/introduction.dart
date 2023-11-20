import 'package:flutter/material.dart';
import 'package:flutter_portfolio_webapp/view_model/responsive.dart';
import 'package:flutter_portfolio_webapp/views/intro/components/intro_body.dart';
import 'package:flutter_portfolio_webapp/views/intro/components/social_media_list.dart';
import 'package:flutter_portfolio_webapp/views/intro/side_men_button.dart';

class Introduction extends StatelessWidget {
  const Introduction({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SizedBox(
            width: MediaQuery.sizeOf(context).width * .01,
          ),
          if (!Responsive.isLargeMobile(context))
            MenuButton(
              onTap: () => Scaffold.of(context).openDrawer(),
            ),
          SizedBox(
            width: MediaQuery.sizeOf(context).width * .02,
          ),
          if (!Responsive.isLargeMobile(context)) const SocialMediaIconList(),
          SizedBox(
            width: MediaQuery.sizeOf(context).width * .07,
          ),
          const Expanded(
            child: IntroBody(),
          ),
        ],
      ),
    );
  }
}
