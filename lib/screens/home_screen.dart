import 'package:flutter/material.dart';
import '../widgets/profile/profile_section.dart';
import '../widgets/skills/skills_section.dart';
import '../widgets/experience/experience_section.dart';
import '../widgets/courses/courses_section.dart';
import '../widgets/languages/language_section.dart';
import '../widgets/portfolio/portfolio_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFF2A2D34), Color(0xFF1A1C20)],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 60),
              // Профиль
              const ProfileSection(),
              
              // Навыки и Опыт в одном ряду
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    return Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Левая колонка: Навыки и Языки
                        Expanded(
                          child: Column(
                            children: const [
                              SkillsSection(),
                              SizedBox(height: 20),
                              LanguageSection(),
                            ],
                          ),
                        ),
                        
                        const SizedBox(width: 20),
                        
                        // Правая колонка: Опыт работы и Курсы
                        Expanded(
                          child: Column(
                            children: const [
                              ExperienceSection(),
                              SizedBox(height: 20),
                              CoursesSection(),
                              SizedBox(height: 20),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              
              const SizedBox(height: 40),
              
              // Портфолио на всю ширину
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: PortfolioSection(),
              ),
              
              const SizedBox(height: 60),
            ],
          ),
        ),
      ),
    );
  }
} 