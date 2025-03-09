// screens/vision_mission_screen.dart
import 'package:flutter/material.dart';

import '../components/expandable_card.dart';

class VisionMissionScreen extends StatelessWidget {
  const VisionMissionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: const [
        ExpandableCard(
          title: 'Department Vision',
          content: 'To be a department of academic excellence producing globally competent MCA professionals contributing to the field of Information Technology with ethical values.',
          icon: Icons.visibility,
        ),
        SizedBox(height: 16),
        ExpandableCard(
          title: 'Department Mission',
          content: 'M1: To impart quality education to meet the needs of profession and society through innovative teaching-learning processes.\n\nM2: To provide an environment conducive for enhancing knowledge, team building, research and employability.\n\nM3: To equip students with professional and soft skills to make them globally competent.\n\nM4: To inculcate professional ethics and social awareness.',
          icon: Icons.lightbulb,
        ),
        SizedBox(height: 16),
        ExpandableCard(
          title: 'Program Educational Objectives (PEOs)',
          content: 'PEO1: To prepare the students to excel in industry/postgraduate studies by acquiring knowledge using modern tools in the field of Computer Applications and Computer Science.\n\nPEO2: To provide students with key skills needed for professional success in the global environment with analytical and critical thinking.\n\nPEO3: To inculcate in students professional and ethical attitude, effective communication skills, teamwork skills, and an ability to relate Computer Applications to broader social contexts.\n\nPEO4: To create industry-ready resources by imparting effective training in computer applications and emerging technologies.',
          icon: Icons.school,
        ),
      ],
    );
  }
}