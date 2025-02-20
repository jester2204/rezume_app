import 'package:flutter/material.dart';
import 'animated_skill_circle.dart';
import 'skill_data.dart';

class SkillCategory extends StatelessWidget {
  final String title;
  final List<SkillData> skills;

  const SkillCategory({
    super.key,
    required this.title,
    required this.skills,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 20),
        Wrap(
          spacing: 20,
          runSpacing: 20,
          alignment: WrapAlignment.center,
          children: skills.map((skill) => AnimatedSkillCircle(
            icon: skill.icon,
            label: skill.name,
            color: skill.color,
          )).toList(),
        ),
      ],
    );
  }
} 