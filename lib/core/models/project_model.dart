class ProjectModel {
  final String id;
  final String title;
  final String description;
  final List<String> tags;
  final String githubUrl;
  final List<String> screenshots;

  ProjectModel({
    required this.id,
    required this.title,
    required this.description,
    required this.tags,
    required this.githubUrl,
    this.screenshots = const [],
  });

  // Helper to create a URL-friendly slug from title
  static String createSlug(String title) {
    return title.toLowerCase().replaceAll(' ', '-');
  }
}
