import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'section_header.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final skills = [
      {
        'name': 'Flutter',
        'icon': FontAwesomeIcons.mobileScreenButton,
        'color': Colors.blue,
      },
      {
        'name': 'Dart',
        'icon': FontAwesomeIcons.code,
        'color': Colors.lightBlueAccent,
      },
      {
        'name': 'Firebase',
        'icon': FontAwesomeIcons.fire,
        'color': Colors.orange,
      },
      {
        'name': 'REST APIs',
        'icon': FontAwesomeIcons.networkWired,
        'color': Colors.green,
      },
      {
        'name': 'GitHub',
        'icon': FontAwesomeIcons.github,
        'color': Colors.white,
      },
      {
        'name': 'UI/UX Design',
        'icon': FontAwesomeIcons.penNib,
        'color': Colors.pinkAccent,
      },
      {
        'name': 'State Management',
        'icon': FontAwesomeIcons.cubes,
        'color': Colors.purpleAccent,
      },
      {
        'name': 'AI & Machine Learning',
        'icon': FontAwesomeIcons.robot,
        'color': Colors.cyanAccent,
      },
      {
        'name': 'Communication',
        'icon': FontAwesomeIcons.comments,
        'color': Colors.tealAccent,
      },
      {
        'name': 'Collaboration',
        'icon': FontAwesomeIcons.handshake,
        'color': Colors.amberAccent,
      },
      {
        'name': 'Adaptability',
        'icon': FontAwesomeIcons.shuffle,
        'color': Colors.lightGreenAccent,
      },
      {
        'name': 'Fast Learning',
        'icon': FontAwesomeIcons.brain,
        'color': Colors.yellowAccent,
      },
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionHeader(
          title: 'MY EXPERTISE',
          subtitle: 'Skills & Technologies',
        ).animate().fadeIn(duration: 600.ms),
        const SizedBox(height: 40),
        Wrap(
          spacing: 20,
          runSpacing: 20,
          children: skills.map((s) {
            return Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 16,
                  ),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.surface,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                      color: Colors.white.withValues(alpha: 0.05),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.2),
                        blurRadius: 10,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      FaIcon(
                        s['icon'] as dynamic,
                        color: s['color'] as Color,
                        size: 24,
                      ),
                      const SizedBox(width: 12),
                      Text(
                        s['name'] as String,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                )
                .animate()
                .fadeIn(delay: 200.ms)
                .scale(begin: const Offset(0.9, 0.9));
          }).toList(),
        ),
      ],
    );
  }
}
