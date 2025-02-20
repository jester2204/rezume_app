import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class LanguageItem extends StatelessWidget {
  final String language;
  final String level;
  final double progress;
  final Color color;
  final int delay;

  const LanguageItem({
    super.key,
    required this.language,
    required this.level,
    required this.progress,
    required this.color,
    required this.delay,
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
              style: TextStyle(
                color: color,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Container(
          height: 8,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.1),
            borderRadius: BorderRadius.circular(4),
          ),
          child: LayoutBuilder(
            builder: (context, constraints) {
              return Row(
                children: [
                  Container(
                    width: constraints.maxWidth * progress,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          color.withOpacity(0.5),
                          color,
                        ],
                      ),
                      borderRadius: BorderRadius.circular(4),
                      boxShadow: [
                        BoxShadow(
                          color: color.withOpacity(0.3),
                          blurRadius: 8,
                          spreadRadius: 1,
                        ),
                      ],
                    ),
                  ).animate()
                    .fadeIn(duration: 400.ms)
                    .slideX(
                      begin: -1,
                      duration: 800.ms,
                      delay: Duration(milliseconds: delay),
                      curve: Curves.easeOut,
                    ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
} 