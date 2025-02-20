import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'language_level_indicator.dart';

class LanguageSection extends StatelessWidget {
  const LanguageSection({super.key});

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
              const FaIcon(FontAwesomeIcons.language, color: Colors.white),
              const SizedBox(width: 10),
              Text(
                'Мовні навички',
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          _LanguageItem(
            language: 'Українська',
            level: 'Рідна',
            progress: 1.0,
          ),
          const SizedBox(height: 20),
          _LanguageItem(
            language: 'Російська',
            level: 'Вільне володіння',
            progress: 0.95,
          ),
          const SizedBox(height: 20),
          _LanguageItem(
            language: 'Англійська',
            level: 'B1 (Середній)',
            progress: 0.6,
          ),
        ],
      ),
    ).animate()
      .fadeIn(duration: 600.ms)
      .slideX(begin: 0.2, delay: 600.ms);
  }
}

class _LanguageItem extends StatelessWidget {
  final String language;
  final String level;
  final double progress;

  const _LanguageItem({
    required this.language,
    required this.level,
    required this.progress,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              language,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              level,
              style: const TextStyle(
                color: Colors.white70,
                fontSize: 14,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        LanguageLevelIndicator(progress: progress),
      ],
    );
  }
} 