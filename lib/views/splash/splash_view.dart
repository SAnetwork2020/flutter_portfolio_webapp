import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_portfolio_webapp/res/constants.dart';
import 'package:flutter_portfolio_webapp/views/authentication/presentation/auth_screen.dart';
import 'package:flutter_portfolio_webapp/views/intro/components/animated_text_component.dart';
import 'package:flutter_portfolio_webapp/views/splash/components/animated_loading_text.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const AuthScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: bgColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedImageContainer(width: 100, height: 100),
            SizedBox(height: defaultPadding),
            AnimatedLoadingText(),
          ],
        ),
      ),
    );
  }
}
