import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:portfolio/core/constants/projects_data.dart';
import 'section_header.dart';
import 'project_card.dart';


class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final projects = projectsData;

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
                            id: p.id,
                            title: p.title,
                            description: p.description,
                            tags: p.tags,
                            githubUrl: p.githubUrl,
                            screenshots: p.screenshots,
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
