import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'skill_category.dart';
import 'skill_data.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white24, width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const FaIcon(FontAwesomeIcons.laptop, color: Colors.white),
              const SizedBox(width: 10),
              Text(
                'Технічні навички',
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          SkillCategory(
            title: 'Backend Development',
            skills: [
              SkillData('Java', FontAwesomeIcons.java, Colors.orange),
              SkillData('Spring Boot', FontAwesomeIcons.leaf, Colors.green),
              SkillData('PostgreSQL', FontAwesomeIcons.database, Colors.blue),
              SkillData('MySQL', FontAwesomeIcons.database, Color(0xFFE48E00)),
              SkillData('MS SQL', FontAwesomeIcons.database, Colors.red),
              SkillData('JavaFX', FontAwesomeIcons.display, Color(0xFF2C98F0)),
              SkillData('Hibernate', FontAwesomeIcons.gear, Colors.brown),
              SkillData('Maven', FontAwesomeIcons.cube, Color(0xFFC71A36)),
              SkillData('Gradle', FontAwesomeIcons.gears, Color(0xFF02303A)),
            ],
          ),
          const SizedBox(height: 30),
          const SkillCategory(
            title: 'Frontend Development',
            skills: [
              SkillData('HTML5', FontAwesomeIcons.html5, Color(0xFFE34F26)),
              SkillData('CSS3', FontAwesomeIcons.css3, Color(0xFF1572B6)),
              SkillData('Bootstrap', FontAwesomeIcons.bootstrap, Color(0xFF7952B3)),
            ],
          ),
          const SizedBox(height: 30),
          const SkillCategory(
            title: 'Mobile Development',
            skills: [
              SkillData('Flutter', FontAwesomeIcons.mobile, Color(0xFF02569B)),
              SkillData('Bloc', FontAwesomeIcons.cubes, Color(0xFF8E24AA)),
              SkillData('Provider', FontAwesomeIcons.box, Color(0xFF42A5F5)),
              SkillData('SQLite', FontAwesomeIcons.database, Color(0xFF0D47A1)),
            ],
          ),
          const SizedBox(height: 30),
          const SkillCategory(
            title: 'DevOps & Tools',
            skills: [
              SkillData('Linux', FontAwesomeIcons.linux, Color(0xFFFCC624)),
              SkillData('Bash', FontAwesomeIcons.terminal, Color(0xFF4EAA25)),
              SkillData('Docker', FontAwesomeIcons.docker, Color(0xFF2496ED)),
              SkillData('Git', FontAwesomeIcons.github, Color(0xFF6E7681)),
            ],
          ),
        ],
      ),
    ).animate()
      .fadeIn(duration: 600.ms)
      .slideX(begin: 0.2, delay: 600.ms);
  }
} 