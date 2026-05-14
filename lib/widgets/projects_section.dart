import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'section_header.dart';
import 'project_card.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final projects = [
      {
        'title': 'AI Image Classifier',
        'desc':
            'A mobile application utilizing TensorFlow Lite models for real-time image classification and object detection. Built entirely in Flutter with custom native channels.',
        'tags': ['Flutter', 'TensorFlow', 'Python'],
        'url': 'https://github.com/baseldev/flutter-ai-classifier',
      },
      {
        'title': 'Omega E-Commerce',
        'desc':
            'A full-stack e-commerce solution featuring Firebase authentication, dynamic cart management, and real-time order tracking using Bloc architecture.',
        'tags': ['Flutter', 'Firebase', 'Bloc', 'Stripe'],
        'url': 'https://github.com/baseldev/flutter-ecommerce',
      },
      {
        'title': 'Runner Game Engine',
        'desc':
            'A 2D infinite runner game developed using the Flame engine. Features custom sprite animations, parallax backgrounds, and complex collision detection.',
        'tags': ['Flutter', 'Flame', 'Game Dev'],
        'url': 'https://github.com/baseldev/runner-game',
      },
      {
        'title': 'Crypto Portfolio',
        'desc':
            'Real-time cryptocurrency portfolio tracker integrating multiple REST and WebSocket APIs. Includes interactive charts and price alerts.',
        'tags': ['Flutter', 'WebSockets', 'REST APIs'],
        'url': 'https://github.com/baseldev/crypto-tracker',
      },
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionHeader(
          title: 'MY WORK',
          subtitle: 'Featured Projects',
        ).animate().fadeIn(duration: 600.ms),
        const SizedBox(height: 40),
        LayoutBuilder(
          builder: (context, constraints) {
            int crossAxisCount = constraints.maxWidth > 800 ? 2 : 1;
            return GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: crossAxisCount,
                crossAxisSpacing: 24,
                mainAxisSpacing: 24,
                childAspectRatio: constraints.maxWidth > 800 ? 1.4 : 1.2,
              ),
              itemCount: projects.length,
              itemBuilder: (context, index) {
                final p = projects[index];
                return ProjectCard(
                  title: p['title'] as String,
                  description: p['desc'] as String,
                  tags: p['tags'] as List<String>,
                  githubUrl: p['url'] as String,
                ).animate().fadeIn(delay: (200 * index).ms).slideY(begin: 0.1);
              },
            );
          },
        ),
      ],
    );
  }
}
