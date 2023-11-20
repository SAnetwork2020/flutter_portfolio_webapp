import 'package:flutter/material.dart';
import 'package:flutter_portfolio_webapp/main/components/drawer/header_info.dart';
import 'package:flutter_portfolio_webapp/res/constants.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: defaultPadding),
        AreaInfoText(title: "Phone", text: "+2349020375440"),
        AreaInfoText(title: "Email", text: "abdlgainyu19@gmail.com"),
        AreaInfoText(title: "twitter", text: "@SulymanAbdulgan"),
        AreaInfoText(title: "GitHub", text: "@SAnetwork2020"),
        SizedBox(height: defaultPadding),
        Text("Skills", style: TextStyle(color: Colors.white)),
        SizedBox(height: defaultPadding),
      ],
    );
  }
}
