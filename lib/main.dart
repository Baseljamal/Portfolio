import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screens/portfolio_home.dart';
import 'core/constants/projects_data.dart';
import 'screens/project_details_screen.dart';

void main() {
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Basel Portfolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF0B0F19),
        primaryColor: const Color(0xFF00F0FF),
        textTheme: GoogleFonts.outfitTextTheme(ThemeData.dark().textTheme),
        colorScheme: const ColorScheme.dark(
          primary: Color(0xFF00F0FF),
          secondary: Color(0xFF7000FF),
          surface: Color(0xFF151B2B),
        ),
      ),
      initialRoute: '/',
      onGenerateRoute: (settings) {
        if (settings.name == '/') {
          return MaterialPageRoute(
            builder: (context) => const PortfolioHome(),
            settings: settings,
          );
        }

        // Handle /project/:id
        if (settings.name!.startsWith('/project/')) {
          final id = settings.name!.replaceFirst('/project/', '');
          final project = projectsData.firstWhere(
            (p) => p.id == id,
            orElse: () => projectsData.first,
          );

          return MaterialPageRoute(
            builder: (context) => ProjectDetailsScreen(
              title: project.title,
              description: project.description,
              tags: project.tags,
              githubUrl: project.githubUrl,
              screenshots: project.screenshots,
            ),
            settings: settings,
          );
        }

        return MaterialPageRoute(
          builder: (context) => const PortfolioHome(),
          settings: settings,
        );
      },
    );
  }
}
