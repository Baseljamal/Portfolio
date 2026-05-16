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
            'A full-stack e-commerce solution featuring Firebase authentication, dynamic cart management, and real-time order tracking using Bloc architecture.',
        'tags': ['Flutter', 'Firebase', 'Bloc'],
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
            'Bookly is an app that allows the user to view free e-books received from an API. It shows the book’s cover image, name, author(s) and enables the user to view the book in his browser, it also has a search service so the user can search for books of any category desired.',
        'tags': ['Flutter', 'REST API', 'Bloc'],
        'url': 'https://github.com/Baseljamal/Bookly',
        'screenshots': [
          'assets/screenshots/bookly_home.png',
          'assets/screenshots/bookly_book_details.png',
          'assets/screenshots/bookly_search.png',
        ],
      },
      {
        'title': 'Notes App',
        'desc':
            'An app where the user can create, edit and delete notes that are stored in a local database using Hive, with Cubit for state management. The user can add a title, content, and background color to their notes, and has the ability to search through notes.',
        'tags': ['Flutter', 'Hive', 'Cubit'],
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
            'Neon Runner is a visually immersive 2D endless runner game built with Flutter and the Flame game engine, where the player has to avoid obstacles by jumping or double jumping. And it has local high-score calculation and dynamic difficulty scaling.',
        'tags': ['Flutter', 'Flame'],
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
