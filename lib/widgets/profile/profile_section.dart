import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection({super.key});

  Future<void> _launchUrl(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw Exception('Could not launch $url');
    }
  }

  Future<void> _launchEmail() async {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'work.maks2002sv@gmail.com',
    );
    await _launchUrl(emailLaunchUri.toString());
  }

  Future<void> _launchTelegram() async {
    await _launchUrl('https://t.me/good_username_good');
  }

  Future<void> _launchPhone() async {
    final Uri phoneLaunchUri = Uri(
      scheme: 'tel',
      path: '+380997957162',
    );
    await _launchUrl(phoneLaunchUri.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          const CircleAvatar(
            radius: 80,
            backgroundColor: Colors.white24,
            backgroundImage: AssetImage('assets/images/profile.jpg'),
          ).animate()
            .fadeIn(duration: 600.ms)
            .scale(delay: 200.ms),
          const SizedBox(height: 20),
          Text(
            'Ніколаєнко Максим Олександрович',
            style: Theme.of(context).textTheme.headlineLarge?.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ).animate()
            .fadeIn(duration: 600.ms)
            .slideY(begin: 0.2, delay: 200.ms),
          const SizedBox(height: 10),
          Text(
            'Flutter & Java Developer',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
              color: Colors.white70,
            ),
          ).animate()
            .fadeIn(duration: 600.ms)
            .slideY(begin: 0.2, delay: 400.ms),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(
                  'Как языковая модель искусственного интеллекта, я...',
                  textStyle: const TextStyle(
                    color: Colors.white70,
                    fontSize: 16,
                    height: 1.5,
                  ),
                  textAlign: TextAlign.center,
                  speed: const Duration(milliseconds: 50),
                ),
                TypewriterAnimatedText(
                  'Молодий та амбітний розробник, який прагне до створення інноваційних рішень. Маю досвід розробки на Flutter та Java, швидко навчаюсь та завжди готовий до нових викликів.',
                  textStyle: const TextStyle(
                    color: Colors.white70,
                    fontSize: 16,
                    height: 1.5,
                  ),
                  textAlign: TextAlign.center,
                  speed: const Duration(milliseconds: 50),
                ),
              ],
              displayFullTextOnTap: true,
              stopPauseOnTap: true,
              isRepeatingAnimation: false,
              pause: const Duration(milliseconds: 2000),
            ),
          ),
          const SizedBox(height: 30),
          // Контакты
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _ContactButton(
                icon: FontAwesomeIcons.envelope,
                label: 'Email',
                onPressed: _launchEmail,
              ),
              const SizedBox(width: 20),
              _ContactButton(
                icon: FontAwesomeIcons.telegram,
                label: 'Telegram',
                onPressed: _launchTelegram,
              ),
              const SizedBox(width: 20),
              _ContactButton(
                icon: FontAwesomeIcons.phone,
                label: 'Телефон',
                onPressed: _launchPhone,
              ),
            ],
          ).animate()
            .fadeIn(duration: 600.ms)
            .slideY(begin: 0.2, delay: 600.ms),
        ],
      ),
    );
  }
}

class _ContactButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onPressed;

  const _ContactButton({
    required this.icon,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: label,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.1),
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.white24, width: 1),
        ),
        child: IconButton(
          icon: FaIcon(icon, color: Colors.white),
          onPressed: onPressed,
          tooltip: label,
          padding: const EdgeInsets.all(16),
        ),
      ),
    );
  }
} 