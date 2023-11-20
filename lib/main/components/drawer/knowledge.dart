
import 'package:flutter/material.dart';
import 'package:flutter_portfolio_webapp/gen/assets.gen.dart';
import 'package:flutter_portfolio_webapp/res/constants.dart';

class KnowledgeText extends StatelessWidget {
  const KnowledgeText({super.key, required this.knowledge});
  final String knowledge;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2.0),
      child: Row(
        children: [
          Assets.icons.check.svg(),
          const SizedBox(width: defaultPadding),
          Text(knowledge),
        ],
      ),
    );
  }
}
