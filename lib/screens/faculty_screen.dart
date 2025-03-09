// screens/faculty_screen.dart
import 'package:flutter/material.dart';

import '../components/faculty_card.dart';

class FacultyScreen extends StatelessWidget {
  const FacultyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Faculty data from the website
    final List<Map<String, String>> facultyList = [
      {
        'name': 'Dr. Aarti Karandekar',
        'designation': 'Professor and Head',
        'qualifications': 'Ph.D. (Computer Engineering), M.E. (Computer Engineering), B.E. (Information Technology)',
        'experience': '20+ years of teaching experience',
        'research': 'Cloud Computing, Big Data Analytics, Machine Learning',
        'email': 'aarti.karanndekar@spit.ac.in',
        'image': 'assets/images/faculty1.png',
      },
      {
        'name': 'Prof. Harshil Kanakia',
        'designation': 'Assistant Professor',
        'qualifications': 'M.E. (Computer Engineering), B.E. (Computer Engineering)',
        'experience': '15+ years of teaching experience',
        'research': 'Web Technologies, Database Management Systems',
        'email': 'harshil.kanakia@spit.ac.in',
        'image': 'assets/images/faculty2.png',
      },
      {
        'name': 'Prof. Pallavi Thakur',
        'designation': 'Assistant Professor',
        'qualifications': 'M.E. (Information Technology), B.E. (Computer Engineering)',
        'experience': '10+ years of teaching experience',
        'research': 'Artificial Intelligence, Web Development',
        'email': 'pallavi.thakur@spit.ac.in',
        'image': 'assets/images/faculty3.png',
      },
      {
        'name': 'Prof. Sakina Shaikh',
        'designation': 'Assistant Professor',
        'qualifications': 'M.E. (Computer Engineering), B.E. (Information Technology)',
        'experience': '12+ years of teaching experience',
        'research': 'Data Science, Machine Learning',
        'email': 'sakina.shaikh@spit.ac.in',
        'image': 'assets/images/faculty4.png',
      },
    ];

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: facultyList.length,
      itemBuilder: (context, index) {
        final faculty = facultyList[index];
        return FacultyCard(faculty: faculty);
      },
    );
  }
}