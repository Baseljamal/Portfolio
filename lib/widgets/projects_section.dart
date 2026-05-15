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
          'https://placehold.co/600x400/png?text=Omega+Store+1',
          'https://placehold.co/600x400/png?text=Omega+Store+2',
        ],
      },
      {
        'title': 'Bookly',
        'desc':
            'Bookly is an app that allows the user to view free e-books received from an API. It shows the book\’s cover image, name, author(s) and enables the user to view the book in his browser, it also has a search service so the user can search for books of any category desired.',
        'tags': ['Flutter', 'REST API', 'Bloc'],
        'url': 'https://github.com/Baseljamal/Bookly',
        'screenshots': [
          'https://placehold.co/600x400/png?text=Omega+Store+1',
          'https://placehold.co/600x400/png?text=Omega+Store+2',
        ],
      },
      {
        'title': 'Notes App',
        'desc':
            'An app where the user can create notes that are stored in a local database using Hive, with Cubit for state management. The user can add a title, content, and background color to their notes, and has the ability to edit each element or delete the note.',
        'tags': ['Flutter', 'Hive', 'Cubit'],
        'url': 'https://github.com/Baseljamal/notes_app',
        'screenshots': [
          'https://placehold.co/600x400/png?text=Notes+App+1',
          'https://placehold.co/600x400/png?text=Notes+App+2',
        ],
      },
      {
        'title': 'Neon Runner',
        'desc':
            'Neon Runner is a visually immersive 2D endless runner game built with Flutter and the Flame game engine, where the player has to avoid obstacles by jumping or double jumping. And it has local high-score calculation and dynamic difficulty scaling.',
        'tags': ['Flutter', 'Flame'],
        'url': 'https://github.com/Baseljamal/Neon_Runner_Game',
        'screenshots': [
          'https://placehold.co/600x400/png?text=Neon+Runner+1',
          'https://placehold.co/600x400/png?text=Neon+Runner+2',
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
