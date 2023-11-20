import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio_webapp/res/constants.dart';
import 'package:flutter_portfolio_webapp/res/interaction/bot_toast_alert.dart';
import 'package:flutter_portfolio_webapp/res/interaction/i_interaction.dart';
import 'package:flutter_portfolio_webapp/views/splash/splash_view.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

Future<void> main() async {
  // WidgetsFlutterBinding().en
  // BotToastInit();
  final alert = BotToastAlert();
  final container = ProviderContainer(
    overrides: [
      alertProvider.overrideWithValue(alert),
    ],
  );
  runApp(
    UncontrolledProviderScope(
      container: container,
      child: const MyApp(),
    ),

    // const ProviderScope(
    //   child: MyApp(),
    // ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: BotToastInit(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        scaffoldBackgroundColor: bgColor,
        useMaterial3: true,
        textTheme: GoogleFonts.openSansTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white)
            .copyWith(
              bodyLarge: const TextStyle(color: bodyTextColor),
              bodyMedium: const TextStyle(color: bodyTextColor),
            ),
      ),
      home: const SplashView(),
    );
  }
}
