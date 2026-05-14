import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 40),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () =>
                    launchUrl(Uri.parse('https://github.com/Baseljamal')),
                icon: const FaIcon(FontAwesomeIcons.github),
                color: Colors.grey.shade400,
                hoverColor: Colors.white,
              ),
              IconButton(
                onPressed: () => launchUrl(
                  Uri.parse('https://www.linkedin.com/in/basel-jamal-abdullah'),
                ),
                icon: const FaIcon(FontAwesomeIcons.linkedinIn),
                color: Colors.grey.shade400,
                hoverColor: Colors.white,
              ),
            ],
          ),
          const SizedBox(height: 16),
          Text(
            'Developed by Basel Abdullah',
            style: TextStyle(
              color: Colors.grey.shade600,
              fontFamily: 'Fira Code',
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
