// screens/home_page.dart
import 'package:flutter/material.dart';
import '../constants/colors.dart';
import 'faculty_screen.dart';
import 'vision_mission_screen.dart';
import 'notifications_screen.dart';
import 'feedback_screen.dart';
import 'webview_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MCA Department'),
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: AppColors.accentMaroon,
          tabs: const [
            Tab(icon: Icon(Icons.people), text: 'Faculty'),
            Tab(icon: Icon(Icons.visibility), text: 'Vision & Mission'),
            Tab(icon: Icon(Icons.notifications), text: 'Notifications'),
            Tab(icon: Icon(Icons.feedback), text: 'Feedback'),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: AppColors.secondaryBlue,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/logo.png',
                    height: 60,
                    width: 60,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'MCA Department',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  const Text(
                    'SPIT, Mumbai',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.people, color: AppColors.secondaryBlue),
              title: const Text('Faculty'),
              onTap: () {
                _tabController.animateTo(0);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.visibility, color: AppColors.secondaryBlue),
              title: const Text('Vision & Mission'),
              onTap: () {
                _tabController.animateTo(1);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.notifications, color: AppColors.secondaryBlue),
              title: const Text('Notifications'),
              onTap: () {
                _tabController.animateTo(2);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.feedback, color: AppColors.secondaryBlue),
              title: const Text('Feedback'),
              onTap: () {
                _tabController.animateTo(3);
                Navigator.pop(context);
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.public, color: AppColors.secondaryBlue),
              title: const Text('Visit Website'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const WebViewScreen()),
                );
              },
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          FacultyScreen(),
          VisionMissionScreen(),
          NotificationsScreen(),
          FeedbackScreen(),
        ],
      ),
    );
  }
}