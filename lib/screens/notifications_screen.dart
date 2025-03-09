// screens/notifications_screen.dart
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants/colors.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Sample notifications data from website
    final List<Map<String, String>> notifications = [
      {
        'title': 'MCA Admissions 2025-26',
        'date': 'February 20, 2025',
        'description': 'Admissions open for MCA program 2025-26. Apply online through DTE website.',
        'url': 'https://mca.spit.ac.in/admissions'
      },
      {
        'title': 'Workshop on AI & Machine Learning',
        'date': 'March 5, 2025',
        'description': 'Two-day workshop on Artificial Intelligence and Machine Learning applications.',
        'url': 'https://mca.spit.ac.in/events'
      },
      {
        'title': 'Placement Drive - TCS',
        'date': 'March 15, 2025',
        'description': 'TCS campus recruitment drive for MCA students graduating in 2025.',
        'url': 'https://mca.spit.ac.in/placements'
      },
      {
        'title': 'International Conference on Computing Technologies',
        'date': 'April 10-12, 2025',
        'description': 'Call for papers for International Conference on Advanced Computing Technologies.',
        'url': 'https://mca.spit.ac.in/conference'
      },
      {
        'title': 'Alumni Meet 2025',
        'date': 'April 30, 2025',
        'description': 'Annual alumni meet for all MCA graduates. Register online.',
        'url': 'https://mca.spit.ac.in/alumni'
      },
    ];

    return notifications.isEmpty
        ? const Center(
            child: Text('No notifications available'),
          )
        : ListView.builder(
            padding: const EdgeInsets.all(16),
            itemCount: notifications.length,
            itemBuilder: (context, index) {
              final notification = notifications[index];
              return Card(
                margin: const EdgeInsets.only(bottom: 16),
                elevation: 2,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                child: ListTile(
                  contentPadding: const EdgeInsets.all(16),
                  leading: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: AppColors.secondaryBlue.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Icon(
                      Icons.notifications,
                      color: AppColors.secondaryBlue,
                    ),
                  ),
                  title: Text(
                    notification['title'] ?? '',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 4),
                      Text(
                        notification['date'] ?? '',
                        style: TextStyle(
                          color: AppColors.accentMaroon,
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(notification['description'] ?? ''),
                      const SizedBox(height: 8),
                      InkWell(
                        onTap: () async {
                          final url = notification['url'] ?? 'https://mca.spit.ac.in';
                          if (await canLaunch(url)) {
                            await launch(url);
                          }
                        },
                        child: Text(
                          'Read more',
                          style: TextStyle(
                            color: AppColors.secondaryBlue,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
  }
}