import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

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
              const FaIcon(FontAwesomeIcons.briefcase, color: Colors.white),
              const SizedBox(width: 10),
              Text(
                'Досвід роботи',
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          _ExperienceItem(
            position: 'Flutter Developer',
            company: 'First Weight',
            period: '2024-2025',
            responsibilities: [
              'Розробка мобільних додатків з використанням Flutter',
              'Створення адаптивних та інтерактивних користувацьких інтерфейсів',
              'Інтеграція з REST API та управління станом додатку',
              'Оптимізація продуктивності та якості коду',
              'Співпраця з командою для досягнення проектних цілей',
            ],
            technologies: ['Flutter', 'Dart', 'Bloc', 'Provider', 'SQLite', 'Git'],
          ),
          const SizedBox(height: 20),
          _ExperienceItem(
            position: 'Java Developer',
            company: 'First Weight',
            period: '2023',
            responsibilities: [
              'Підтримка та вдосконалення існуючих Java проектів',
              'Розробка нових додатків з нуля',
              'Створення користувацьких інтерфейсів з використанням JavaFX',
              'Розробка веб-додатків з використанням Spring Framework',
              'Імплементація Spring Boot для швидкої розробки',
              'Створення веб-сервісів та RESTful API з використанням Spring MVC',
              'Інтеграція з базами даних через Spring Data JPA',
              // 'Проведення код-рев\'ю та участь в Agile процесах',
            ],
            technologies: ['Java', 'Spring Framework', 'JavaFX', 'Git', 'Maven/Gradle'],
          ),
        ],
      ),
    ).animate()
      .fadeIn(duration: 600.ms)
      .slideX(begin: 0.2, delay: 600.ms);
  }
}

class _ExperienceItem extends StatelessWidget {
  final String position;
  final String company;
  final String period;
  final List<String> responsibilities;
  final List<String> technologies;

  const _ExperienceItem({
    required this.position,
    required this.company,
    required this.period,
    required this.responsibilities,
    required this.technologies,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.05),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.white24, width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                position,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                period,
                style: const TextStyle(
                  color: Colors.white70,
                  fontSize: 14,
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          Text(
            company,
            style: const TextStyle(
              color: Colors.white70,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 15),
          const Text(
            'Обов\'язки та досягнення:',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          ...responsibilities.map((responsibility) => Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  '• ',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 14,
                  ),
                ),
                Expanded(
                  child: Text(
                    responsibility,
                    style: const TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
          )),
          const SizedBox(height: 15),
          const Text(
            'Технології:',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: technologies.map((tech) => Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.1),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.white24, width: 1),
              ),
              child: Text(
                tech,
                style: const TextStyle(
                  color: Colors.white70,
                  fontSize: 12,
                ),
              ),
            )).toList(),
          ),
        ],
      ),
    );
  }
} 