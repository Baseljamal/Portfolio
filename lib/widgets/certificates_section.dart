import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'section_header.dart';

class CertificatesSection extends StatelessWidget {
  const CertificatesSection({super.key});

  @override
  Widget build(BuildContext context) {
    final certs = [
      {
        'title': 'Complete Flutter & Dart Development Course',
        'issuer': 'Udemy / Tharwat Samy',
        'icon': FontAwesomeIcons.certificate,
        'imageUrl':
            'https://udemy-certificate.s3.amazonaws.com/image/UC-fde039a1-77b6-4ca3-9940-da3542a9e2ea.jpg',
      },
      {
        'title': 'Flutter Advanced Course : Bloc and MVVM Pattern',
        'issuer': 'Udemy / Tharwat Samy',
        'icon': FontAwesomeIcons.shieldHalved,
        'imageUrl':
            'https://udemy-certificate.s3.amazonaws.com/image/UC-eb7ea9fc-2e1d-4530-b6f6-aab60c0483c1.jpg',
      },
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionHeader(
          title: 'LEARNING',
          subtitle: 'Certifications',
        ).animate().fadeIn(duration: 600.ms),
        const SizedBox(height: 40),
        Column(
          children: certs.map((c) {
            return Container(
              margin: const EdgeInsets.only(bottom: 16),
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: Colors.white.withValues(alpha: 0.05)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Theme.of(
                            context,
                          ).colorScheme.secondary.withValues(alpha: 0.1),
                          shape: BoxShape.circle,
                        ),
                        child: FaIcon(
                          c['icon'] as dynamic,
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                      ),
                      const SizedBox(width: 24),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              c['title'] as String,
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              c['issuer'] as String,
                              style: TextStyle(color: Colors.grey.shade400),
                            ),
                          ],
                        ),
                      ),
                      if (c.containsKey('imageUrl'))
                        IconButton(
                          icon: const Icon(Icons.image_outlined),
                          color: Theme.of(context).primaryColor,
                          tooltip: 'View Certificate',
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (context) => Dialog(
                                backgroundColor: Colors.transparent,
                                insetPadding: const EdgeInsets.all(20),
                                child: Stack(
                                  alignment: Alignment.topRight,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: InteractiveViewer(
                                        child: Image.network(
                                          'https://wsrv.nl/?url=${Uri.encodeComponent(c['imageUrl'] as String)}',
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: CircleAvatar(
                                        backgroundColor: Colors.black54,
                                        child: IconButton(
                                          icon: const Icon(
                                            Icons.close,
                                            color: Colors.white,
                                          ),
                                          onPressed: () =>
                                              Navigator.of(context).pop(),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                    ],
                  ),
                ],
              ),
            ).animate().fadeIn().slideX(begin: -0.1);
          }).toList(),
        ),
      ],
    );
  }
}
