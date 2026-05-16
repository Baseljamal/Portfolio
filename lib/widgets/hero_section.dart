import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_animate/flutter_animate.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = MediaQuery.of(context).size.width > 800;

    Widget content = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            color: Theme.of(
              context,
            ).colorScheme.secondary.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: Theme.of(
                context,
              ).colorScheme.secondary.withValues(alpha: 0.3),
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.work,
                size: 16,
                color: Theme.of(context).colorScheme.secondary,
              ),
              const SizedBox(width: 8),
              Text(
                'Available for work',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.secondary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ).animate().fadeIn(delay: 300.ms).slideX(begin: -0.2),
        const SizedBox(height: 24),
        Text(
          'Hi, I am Basel',
          style: GoogleFonts.outfit(
            fontSize: isDesktop ? 64 : 48,
            fontWeight: FontWeight.w800,
            height: 1.1,
            color: Colors.white,
          ),
        ).animate().fadeIn(delay: 400.ms).slideY(begin: 0.2),
        Text(
          'Flutter Developer',
          style: GoogleFonts.outfit(
            fontSize: isDesktop ? 64 : 48,
            fontWeight: FontWeight.w800,
            height: 1.1,
            foreground: Paint()
              ..shader = const LinearGradient(
                colors: [Color(0xFF00F0FF), Color(0xFF7000FF)],
              ).createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0)),
          ),
        ).animate().fadeIn(delay: 500.ms).slideY(begin: 0.2),
        const SizedBox(height: 24),
        Text(
          'I build premium, cross‑platform applications with Flutter,\nFirebase, and state-of-the-art AI integrations.',
          textAlign: TextAlign.start,
          style: TextStyle(
            fontSize: 18,
            color: Colors.grey.shade400,
            height: 1.6,
          ),
        ).animate().fadeIn(delay: 600.ms),
        const SizedBox(height: 40),
        Wrap(
          alignment: WrapAlignment.start,
          spacing: 20,
          runSpacing: 20,
          children: [
            OutlinedButton(
              onPressed: () => launchUrl(
                Uri.parse(
                  'https://raw.githubusercontent.com/Baseljamal/Portfolio/main/assets/cv.pdf',
                ),
              ),
              style:
                  OutlinedButton.styleFrom(
                    foregroundColor: const Color(0xFF7000FF),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 32,
                      vertical: 20,
                    ),
                    side: const BorderSide(color: Color(0xFF7000FF), width: 2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ).copyWith(
                    backgroundColor: WidgetStateProperty.resolveWith((states) {
                      if (states.contains(WidgetState.hovered)) {
                        return const Color(0xFF7000FF).withValues(alpha: 0.1);
                      }
                      return Colors.transparent;
                    }),
                  ),
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.file_download_outlined, size: 20),
                  SizedBox(width: 12),
                  Text(
                    'Download CV',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            OutlinedButton(
              onPressed: () =>
                  launchUrl(Uri.parse('https://github.com/Baseljamal')),
              style:
                  OutlinedButton.styleFrom(
                    foregroundColor: const Color(0xFF00F0FF),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 32,
                      vertical: 20,
                    ),
                    side: const BorderSide(color: Color(0xFF00F0FF), width: 2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ).copyWith(
                    backgroundColor: WidgetStateProperty.resolveWith((states) {
                      if (states.contains(WidgetState.hovered)) {
                        return const Color(0xFF00F0FF).withValues(alpha: 0.1);
                      }
                      return Colors.transparent;
                    }),
                  ),
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  FaIcon(FontAwesomeIcons.github, size: 20),
                  SizedBox(width: 12),
                  Text(
                    'GitHub',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            OutlinedButton(
              onPressed: () => launchUrl(
                Uri.parse('https://www.linkedin.com/in/basel-jamal-abdullah'),
              ),
              style:
                  OutlinedButton.styleFrom(
                    foregroundColor: const Color(0xFF0A66C2),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 32,
                      vertical: 20,
                    ),
                    side: const BorderSide(color: Color(0xFF0A66C2), width: 2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ).copyWith(
                    backgroundColor: WidgetStateProperty.resolveWith((states) {
                      if (states.contains(WidgetState.hovered)) {
                        return const Color(0xFF0A66C2).withValues(alpha: 0.1);
                      }
                      return Colors.transparent;
                    }),
                  ),
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  FaIcon(FontAwesomeIcons.linkedinIn, size: 20),
                  SizedBox(width: 12),
                  Text(
                    'LinkedIn',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ).animate().fadeIn(delay: 700.ms).slideY(begin: 0.2),
      ],
    );

    final image = Container(
      width: isDesktop ? 400 : 300,
      height: isDesktop ? 400 : 300,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: const LinearGradient(
          colors: [Color(0xFF00F0FF), Color(0xFF7000FF)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF00F0FF).withValues(alpha: 0.3),
            blurRadius: 40,
            spreadRadius: 10,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipOval(
          child: Image.asset(
            'assets/profile.jpg',
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return Container(
                color: Theme.of(context).colorScheme.surface,
                child: const Center(
                  child: Icon(Icons.person, size: 100, color: Colors.white24),
                ),
              );
            },
          ),
        ),
      ),
    ).animate().fadeIn(delay: 500.ms).scale(begin: const Offset(0.8, 0.8));

    if (isDesktop) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(child: content),
          image,
        ],
      );
    } else {
      return Column(children: [image, const SizedBox(height: 60), content]);
    }
  }
}
