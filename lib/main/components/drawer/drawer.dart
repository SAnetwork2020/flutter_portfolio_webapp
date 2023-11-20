import 'package:flutter/material.dart';
import 'package:flutter_portfolio_webapp/gen/assets.gen.dart';
import 'package:flutter_portfolio_webapp/main/components/drawer/about.dart';
import 'package:flutter_portfolio_webapp/main/components/drawer/contact_icons.dart';
import 'package:flutter_portfolio_webapp/main/components/drawer/knowledge.dart';
import 'package:flutter_portfolio_webapp/main/components/drawer/knowledges.dart';
import 'package:flutter_portfolio_webapp/main/components/drawer/my_skill.dart';
import 'package:flutter_portfolio_webapp/main/components/drawer/personal_info.dart';
import 'package:flutter_portfolio_webapp/res/constants.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: primaryColor,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const About(),
            Container(
              color: bgColor,
              padding: const EdgeInsets.all(defaultPadding / 2),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PersonalInfo(),
                  MySkills(),
                  Knowledges(),
                  Divider(),
                  SizedBox(height: defaultPadding),
                  ContactIcon(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
