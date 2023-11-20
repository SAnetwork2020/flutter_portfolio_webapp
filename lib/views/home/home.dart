import 'package:flutter/material.dart';
import 'package:flutter_portfolio_webapp/main/main_view.dart';
import 'package:flutter_portfolio_webapp/views/intro/components/introduction.dart';
import 'package:flutter_portfolio_webapp/views/projects/project_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  MainView(pages: [
      const Introduction(),
      ProjectsView(),
      // Certifications(),
    ]);
  }
}
