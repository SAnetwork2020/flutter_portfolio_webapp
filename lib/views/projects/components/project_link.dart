import 'package:flutter/material.dart';
import 'package:flutter_portfolio_webapp/gen/assets.gen.dart';
import 'package:flutter_portfolio_webapp/model/project_model.dart.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectLink extends StatelessWidget {
  const ProjectLink({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            const Text(
              "Check on GitHub",
              style: TextStyle(color: Colors.white),
              overflow: TextOverflow.ellipsis,
            ),
            IconButton(
              onPressed: () {
                launchUrl(Uri.parse("${projects[index].link}"));
              },
              icon: Assets.icons.github.svg(),
            ),
          ],
        ),
        const Spacer(),
        TextButton(
          onPressed: () {
            launchUrl(Uri.parse(projects[index].apkLink ?? ""));
          },
          child: const Text(
            "Download apk>>",
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.amber,
              fontWeight: FontWeight.bold,
              fontSize: 10,
            ),
          ),
        )
      ],
    );
  }
}
