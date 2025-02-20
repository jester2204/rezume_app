import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'portfolio_item.dart';

class PortfolioSection extends StatelessWidget {
  const PortfolioSection({super.key});

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
              const FaIcon(FontAwesomeIcons.folderOpen, color: Colors.white),
              const SizedBox(width: 10),
              Text(
                'Портфолио',
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          FlutterCarousel(
            options: CarouselOptions(
              height: 700.0,
              showIndicator: true,
              slideIndicator: const CircularSlideIndicator(),
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 5),
              viewportFraction: 0.8,
              enableInfiniteScroll: true,
              enlargeCenterPage: true,
            ),
            items: const [
              PortfolioItem(
                title: 'EasyTask - Менеджер задач',
                description: 'Мобільний додаток для ефективного управління задачами та проектами. Зручний інтерфейс, можливість категоризації, встановлення пріоритетів та нагадувань.',
                imageUrl: 'assets/images/todo_app.png',
                technologies: ['Flutter', 'Bloc', 'Hive', 'Local Notifications'],
              ),
              PortfolioItem(
                title: 'Система управління виставкою',
                description: 'Комплексний додаток для організації та управління виставковими експозиціями. Включає функції планування розміщення експонатів, управління відвідувачами та аналітику.',
                imageUrl: 'assets/images/exhibition.png',
                technologies: ['Flutter', 'Provider', 'REST API', 'Charts'],
              ),
              PortfolioItem(
                title: 'Розумний будильник',
                description: 'Мультиплатформний додаток-будильник з підтримкою різних пристроїв. Включає розумне прокидання, статистику сну та інтеграцію з розумним домом.',
                imageUrl: 'assets/images/alarm_clock.png',
                technologies: ['Flutter', 'Bloc', 'Platform Channels', 'Background Services'],
              ),
              PortfolioItem(
                title: 'VR Room Manager',
                description: 'Додаток для управління VR-кімнатою розважального закладу. Система бронювання, управління сеансами, облік обладнання та статистика використання.',
                imageUrl: 'assets/images/vr_room.png',
                technologies: ['Flutter', 'Bloc', 'Custom Animations'],
              ),
            ],
          ),
        ],
      ),
    ).animate()
      .fadeIn(duration: 600.ms)
      .slideX(begin: 0.2, delay: 600.ms);
  }
} 