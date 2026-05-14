import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../core/widgets/responsive_wrapper.dart';
import '../widgets/nav_bar.dart';
import '../widgets/hero_section.dart';
import '../widgets/skills_section.dart';
import '../widgets/projects_section.dart';
import '../widgets/certificates_section.dart';
import '../widgets/contact_section.dart';
import '../widgets/footer.dart';

class PortfolioHome extends StatelessWidget {
  const PortfolioHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
              top: -150,
              left: -150,
              child: Container(
                width: 400,
                height: 400,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFF7000FF).withValues(alpha: 0.15),
                      blurRadius: 200,
                      spreadRadius: 50,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 400,
              right: -200,
              child: Container(
                width: 500,
                height: 500,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFF00F0FF).withValues(alpha: 0.1),
                      blurRadius: 250,
                      spreadRadius: 50,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: -100,
              left: 200,
              child: Container(
                width: 400,
                height: 400,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFF7000FF).withValues(alpha: 0.15),
                      blurRadius: 200,
                      spreadRadius: 50,
                    ),
                  ],
                ),
              ),
            ),

            // Main Scrollable Content
            SingleChildScrollView(
              child: Column(
                children: [
                  const NavBar()
                      .animate()
                      .fadeIn(duration: 600.ms)
                      .slideY(begin: -0.2, end: 0),
                  ResponsiveWrapper(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 80),
                          const HeroSection(),
                          const SizedBox(height: 140),
                          const SkillsSection(),
                          const SizedBox(height: 140),
                          const ProjectsSection(),
                          const SizedBox(height: 140),
                          const CertificatesSection(),
                          const SizedBox(height: 140),
                          const ContactSection(),
                          const SizedBox(height: 100),
                        ],
                      ),
                    ),
                  ),
                  const Footer(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
