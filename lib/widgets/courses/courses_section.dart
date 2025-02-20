import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class CoursesSection extends StatelessWidget {
  const CoursesSection({super.key});

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
              const FaIcon(FontAwesomeIcons.graduationCap, color: Colors.white),
              const SizedBox(width: 10),
              Text(
                'Курси та сертифікати',
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          _MainCourseItem(
            title: 'EPAM External Course',
            period: 'Березень 2020 - Вересень 2020',
            location: 'Кропивницький',
            projectTitle: 'Banking MVC Application',
            technologies: ['Java', 'JSP', 'Servlets', 'JDBC', 'HTML', 'CSS'],
            description: [
              'Розробка банківського MVC додатку з нуля без використання Spring framework',
              'Реалізація архітектури Model-View-Controller для чіткого розділення бізнес-логіки, представлення та контролю',
              'Використання JSP для створення динамічних веб-сторінок',
              'Застосування Java Servlets для обробки HTTP запитів',
              'Інтеграція JDBC для роботи з базою даних',
              'Розробка користувацького інтерфейсу з використанням HTML та CSS',
              'Реалізація базових заходів безпеки',
              'Проведення модульного тестування компонентів',
            ],
            achievements: [
              'Успішно створено функціональний банківський веб-додаток',
              'Отримано практичний досвід роботи з MVC архітектурою',
              'Покращено навички розробки веб-додатків без використання фреймворків',
            ],
          ),
          const SizedBox(height: 20),
          const Text(
            'Онлайн сертифікати',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 15),
          _CertificateItem(
            title: 'Введение в Linux',
            platform: 'Stepik',
            certificateUrl: 'https://stepik.org/cert/839991',
          ),
          const SizedBox(height: 10),
          _CertificateItem(
            title: 'Kotlin JVM - курс для начинающих',
            platform: 'Stepik',
            certificateUrl: 'https://stepik.org/cert/1965458',
          ),
          const SizedBox(height: 10),
          _CertificateItem(
            title: '"Поколение Python": курс для начинающих',
            platform: 'Stepik',
            certificateUrl: 'https://stepik.org/cert/659027',
          ),
        ],
      ),
    ).animate()
      .fadeIn(duration: 600.ms)
      .slideX(begin: 0.2, delay: 600.ms);
  }
}

class _MainCourseItem extends StatelessWidget {
  final String title;
  final String period;
  final String location;
  final String projectTitle;
  final List<String> technologies;
  final List<String> description;
  final List<String> achievements;

  const _MainCourseItem({
    required this.title,
    required this.period,
    required this.location,
    required this.projectTitle,
    required this.technologies,
    required this.description,
    required this.achievements,
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
                title,
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
            location,
            style: const TextStyle(
              color: Colors.white70,
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 15),
          Text(
            'Проект: $projectTitle',
            style: const TextStyle(
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
          const SizedBox(height: 15),
          const Text(
            'Опис:',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          ...description.map((item) => Padding(
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
                    item,
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
            'Досягнення:',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          ...achievements.map((achievement) => Padding(
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
                    achievement,
                    style: const TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
          )),
        ],
      ),
    );
  }
}

class _CertificateItem extends StatelessWidget {
  final String title;
  final String platform;
  final String certificateUrl;

  const _CertificateItem({
    required this.title,
    required this.platform,
    required this.certificateUrl,
  });

  Future<void> _launchUrl() async {
    if (!await launchUrl(Uri.parse(certificateUrl))) {
      throw Exception('Could not launch $certificateUrl');
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _launchUrl,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.05),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.white24, width: 1),
        ),
        child: Row(
          children: [
            const FaIcon(
              FontAwesomeIcons.certificate,
              color: Colors.white70,
              size: 20,
            ),
            const SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    platform,
                    style: const TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            const FaIcon(
              FontAwesomeIcons.arrowUpRightFromSquare,
              color: Colors.white70,
              size: 16,
            ),
          ],
        ),
      ),
    );
  }
} 