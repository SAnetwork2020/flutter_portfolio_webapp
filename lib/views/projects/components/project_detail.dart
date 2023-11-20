import 'package:flutter/material.dart';
import 'package:flutter_portfolio_webapp/model/project_model.dart.dart';
import 'package:flutter_portfolio_webapp/res/constants.dart';
import 'package:flutter_portfolio_webapp/view_model/responsive.dart';
import 'package:flutter_portfolio_webapp/views/projects/components/project_link.dart';

class ProjectDetail extends StatelessWidget {
  const ProjectDetail({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Text(
            "${projects[index].title}",
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Responsive.isMobile(context)
            ? const SizedBox(height: defaultPadding / 2)
            : const SizedBox(
                height: defaultPadding,
              ),
        Text(
          "${projects[index].description}",
          style: const TextStyle(color: Colors.grey, height: 1.5),
          maxLines: size.width > 700 && size.width < 750
              ? 3
              : size.width < 470
                  ? 2
                  : size.width > 600 && size.width < 700
                      ? 6
                      : size.width > 900 && size.width < 1060
                          ? 6
                          : 4,
          overflow: TextOverflow.ellipsis,
        ),
        const Spacer(),
        ProjectLink(index: index),
        const SizedBox(height: defaultPadding / 2),
      ],
    );
  }
}
