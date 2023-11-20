import 'package:flutter/material.dart';
import 'package:flutter_portfolio_webapp/main/components/drawer/knowledge.dart';

class Knowledges extends StatelessWidget {
  const Knowledges({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Text(
            "Knowledge",
            style: TextStyle(color: Colors.white),
          ),
        ),
        KnowledgeText(knowledge: "Flutter, Dart"),
        KnowledgeText(knowledge: "Fireebase"),
        KnowledgeText(knowledge: "Appwrite"),
        KnowledgeText(knowledge: "Git, GitHub"),
      ],
    );
  }
}
