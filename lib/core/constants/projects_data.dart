import '../models/project_model.dart';

final List<ProjectModel> projectsData = [
  ProjectModel(
    id: 'omega-store',
    title: 'Omega Store',
    description:
        'A high-performance e-commerce platform built with Clean Architecture and Bloc. Features secure Firebase authentication, real-time sync, and a responsive shopping experience.',
    tags: ['Flutter', 'Firebase', 'Bloc', 'Clean Architecture'],
    githubUrl: 'https://github.com/Baseljamal/Omega_Store',
    screenshots: [
      'assets/screenshots/omega_store_login.png',
      'assets/screenshots/omega_store_shop.png',
      'assets/screenshots/omega_store_cart.png',
      'assets/screenshots/omega_store_profile.png',
    ],
  ),
  ProjectModel(
    id: 'bookly',
    title: 'Bookly',
    description:
        'A polished book discovery app utilizing Google Books API. Features advanced search logic, custom UI animations, and seamless external URL integration for reading.',
    tags: ['Flutter', 'REST API', 'Bloc', 'Animations'],
    githubUrl: 'https://github.com/Baseljamal/Bookly',
    screenshots: [
      'assets/screenshots/bookly_home.png',
      'assets/screenshots/bookly_book_details.png',
      'assets/screenshots/bookly_search.png',
    ],
  ),
  ProjectModel(
    id: 'ai-classifier',
    title: 'AI Classifier Module',
    description:
        'An edge-computing AI solution leveraging TensorFlow Lite for real-time image classification. Optimized for mobile performance with on-device model inference.',
    tags: ['Flutter', 'TensorFlow Lite', 'AI', 'Edge Computing'],
    githubUrl: 'https://github.com/Baseljamal/AI_Module',
    screenshots: [
      'assets/screenshots/ai_module_home.png',
      'assets/screenshots/ai_module_human.png',
      'assets/screenshots/ai_module_robot.png',
    ],
  ),
  ProjectModel(
    id: 'notes-app',
    title: 'Notes App',
    description:
        'A robust productivity tool for managing digital notes. Implements Hive for high-speed local persistence and Cubit for lightweight, predictable state management.',
    tags: ['Flutter', 'Hive', 'Cubit', 'Clean Code'],
    githubUrl: 'https://github.com/Baseljamal/notes_app',
    screenshots: [
      'assets/screenshots/notes_app_home.png',
      'assets/screenshots/notes_app_add.png',
      'assets/screenshots/notes_app_edit.png',
      'assets/screenshots/notes_app_delete.png',
      'assets/screenshots/notes_app_search.png',
    ],
  ),
  ProjectModel(
    id: 'neon-runner',
    title: 'Neon Runner',
    description:
        'A high-frame-rate 2D endless runner built with the Flame engine. Features custom collision physics, parallax scrolling, and dynamic difficulty scaling.',
    tags: ['Flutter', 'Flame', 'Game Dev', 'Physics'],
    githubUrl: 'https://github.com/Baseljamal/Neon_Runner_Game',
    screenshots: [
      'assets/screenshots/neon_runner_home.png',
      'assets/screenshots/neon_runner_gameplay.png',
      'assets/screenshots/neon_runner_loss.png',
    ],
  ),
];
