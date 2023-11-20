import 'package:flutter/material.dart';
import 'package:flutter_portfolio_webapp/gen/assets.gen.dart';
import 'package:flutter_portfolio_webapp/main/components/connect_button.dart';
import 'package:flutter_portfolio_webapp/main/components/navigation_button_list.dart';
import 'package:flutter_portfolio_webapp/res/constants.dart';
import 'package:flutter_portfolio_webapp/view_model/responsive.dart';
import 'package:flutter_portfolio_webapp/views/intro/side_men_button.dart';

class TopNavigationBar extends StatelessWidget {
  const TopNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: !Responsive.isLargeMobile(context)
                ? Assets.images.triangeIcon.image()
                : MenuButton(
                    onTap: () => Scaffold.of(context).openDrawer(),
                  ),
          ),
          // if (Responsive.isLargeMobile(context)) MenuButton(),
          const Spacer(flex: 2),
          if (!Responsive.isLargeMobile(context)) const NavigationButtonList(),
          const Spacer(flex: 2),
          const ConnectButton(), const Spacer(),
        ],
      ),
    );
  }
}
