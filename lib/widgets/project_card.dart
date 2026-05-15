import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/screens/project_details_screen.dart';

class ProjectCard extends StatelessWidget {
  final String title;
  final String description;
  final List<String> tags;
  final String githubUrl;
  final List<String> screenshots;

  const ProjectCard({
    super.key,
    required this.title,
    required this.description,
    required this.tags,
    required this.githubUrl,
    this.screenshots = const [],
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: Colors.white.withValues(alpha: 0.05)),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(24),
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ProjectDetailsScreen(
                  title: title,
                  description: description,
                  tags: tags,
                  githubUrl: githubUrl,
                  screenshots: screenshots,
                ),
              ),
            );
          },
          hoverColor: Colors.white.withValues(alpha: 0.02),
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Theme.of(
                          context,
                        ).primaryColor.withValues(alpha: 0.1),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: FaIcon(
                        FontAwesomeIcons.folderOpen,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    FaIcon(
                      FontAwesomeIcons.arrowUpRightFromSquare,
                      color: Colors.grey.shade600,
                      size: 18,
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 16),
                Expanded(
                  child: Text(
                    description,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey.shade400,
                      height: 1.5,
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                Wrap(
                  spacing: 12,
                  runSpacing: 8,
                  children: tags.map((t) {
                    return Text(
                      t,
                      style: TextStyle(
                        fontSize: 14,
                        color: Theme.of(context).primaryColor,
                        fontFamily: 'Fira Code',
                      ),
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
