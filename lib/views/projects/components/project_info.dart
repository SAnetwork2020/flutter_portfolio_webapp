import 'package:flutter/material.dart';
import 'package:flutter_portfolio_webapp/res/constants.dart';
import 'package:flutter_portfolio_webapp/view_model/controller.dart';
import 'package:flutter_portfolio_webapp/view_model/getx_controllers/projects_controller.dart';
import 'package:flutter_portfolio_webapp/views/projects/components/project_detail.dart';
import 'package:get/get.dart';

class ProjectStack extends StatelessWidget {
  ProjectStack({super.key, required this.index});
  final int index;
  final controller = Get.put(ProjectController());
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (value) {
        controller.onHover(index, value);
      },
      onTap: () {
        // ImageViewer(context, projects[index].image);
      },
      borderRadius: BorderRadius.circular(30),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        padding: const EdgeInsets.only(
          left: defaultPadding,
          right: defaultPadding,
          top: defaultPadding,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: bgColor,
        ),
        child: ProjectDetail(index:index),
      ),
    );
  }
}
