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
        'title': 'Omega Store',
        'desc':
            'A high-performance e-commerce platform built with Clean Architecture and Bloc. Features secure Firebase authentication, real-time sync, and a responsive shopping experience.',
        'tags': ['Flutter', 'Firebase', 'Bloc', 'Clean Architecture'],
        'url': 'https://github.com/Baseljamal/Omega_Store',
        'screenshots': [
          'assets/screenshots/omega_store_login.png',
          'assets/screenshots/omega_store_shop.png',
          'assets/screenshots/omega_store_cart.png',
          'assets/screenshots/omega_store_profile.png',
        ],
      },
      {
        'title': 'Bookly',
        'desc':
            'A polished book discovery app utilizing Google Books API. Features advanced search logic, custom UI animations, and seamless external URL integration for reading.',
        'tags': ['Flutter', 'REST API', 'Bloc', 'Animations'],
        'url': 'https://github.com/Baseljamal/Bookly',
        'screenshots': [
          'assets/screenshots/bookly_home.png',
          'assets/screenshots/bookly_book_details.png',
          'assets/screenshots/bookly_search.png',
        ],
      },
      {
        'title': 'AI Classifier Module',
        'desc':
            'An edge-computing AI solution leveraging TensorFlow Lite for real-time image classification. Optimized for mobile performance with on-device model inference.',
        'tags': ['Flutter', 'TensorFlow Lite', 'AI', 'Edge Computing'],
        'url': 'https://github.com/Baseljamal/AI_Module',
        'screenshots': [
          'assets/screenshots/ai_module_home.png',
          'assets/screenshots/ai_module_human.png',
          'assets/screenshots/ai_module_robot.png',
        ],
      },
      {
        'title': 'Notes App',
        'desc':
            'A robust productivity tool for managing digital notes. Implements Hive for high-speed local persistence and Cubit for lightweight, predictable state management.',
        'tags': ['Flutter', 'Hive', 'Cubit', 'Clean Code'],
        'url': 'https://github.com/Baseljamal/notes_app',
        'screenshots': [
          'assets/screenshots/notes_app_home.png',
          'assets/screenshots/notes_app_add.png',
          'assets/screenshots/notes_app_edit.png',
          'assets/screenshots/notes_app_delete.png',
          'assets/screenshots/notes_app_search.png',
        ],
      },
      {
        'title': 'Neon Runner',
        'desc':
            'A high-frame-rate 2D endless runner built with the Flame engine. Features custom collision physics, parallax scrolling, and dynamic difficulty scaling.',
        'tags': ['Flutter', 'Flame', 'Game Dev', 'Physics'],
        'url': 'https://github.com/Baseljamal/Neon_Runner_Game',
        'screenshots': [
          'assets/screenshots/neon_runner_home.png',
          'assets/screenshots/neon_runner_gameplay.png',
          'assets/screenshots/neon_runner_loss.png',
        ],
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
            return Wrap(
              spacing: 24,
              runSpacing: 24,
              children: List.generate(projects.length, (index) {
                final p = projects[index];
                final width = crossAxisCount == 1
                    ? constraints.maxWidth
                    : (constraints.maxWidth - 24) / 2;
                return SizedBox(
                  width: width,
                  child:
                      ProjectCard(
                            title: p['title'] as String,
                            description: p['desc'] as String,
                            tags: p['tags'] as List<String>,
                            githubUrl: p['url'] as String,
                            screenshots:
                                (p['screenshots'] as List<String>?) ?? [],
                          )
                          .animate()
                          .fadeIn(delay: (200 * index).ms)
                          .slideY(begin: 0.1),
                );
              }),
            );
          },
        ),
      ],
    );
  }
}
