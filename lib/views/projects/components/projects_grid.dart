import 'package:flutter/material.dart';
import 'package:flutter_portfolio_webapp/model/project_model.dart.dart';
import 'package:flutter_portfolio_webapp/res/constants.dart';
import 'package:flutter_portfolio_webapp/view_model/getx_controllers/projects_controller.dart';
import 'package:flutter_portfolio_webapp/views/projects/components/project_info.dart';
import 'package:get/get.dart';

class ProjectGrid extends StatelessWidget {
  ProjectGrid({super.key, this.crossAxisCount = 3, this.ratio = 1.3});
  final int crossAxisCount;
  final double ratio;
  final controller = Get.put(ProjectController());
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        itemCount: projects.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount, childAspectRatio: ratio),
        itemBuilder: (context, index) {
          return Obx(
            () => AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              margin: EdgeInsets.symmetric(
                vertical: defaultPadding,
                horizontal: defaultPadding,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                gradient: LinearGradient(
                  colors: [Colors.pinkAccent, Colors.blue],
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.pink,
                    offset: Offset(-2, 0),
                    blurRadius: controller.hovers[index] ? 20 : 10,
                  ),
                  BoxShadow(
                    color: Colors.blue,
                    offset: Offset(2, 0),
                    blurRadius: controller.hovers[index] ? 20 : 10,
                  ),
                ],
              ),child: ProjectStack(index: index),
            ),
          );
        });
  }
}
