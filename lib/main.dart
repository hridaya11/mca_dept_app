// main.dart - Main entry point for the application
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'constants/colors.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: AppColors.secondaryBlue,
      ),
    );
    
    return MaterialApp(
      title: 'MCA Department App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: AppColors.secondaryBlue,
        scaffoldBackgroundColor: AppColors.primaryWhite,
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.secondaryBlue,
          foregroundColor: AppColors.primaryWhite,
        ),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: AppColors.accentMaroon,
        ),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: AppColors.textColor),
          titleMedium: TextStyle(color: AppColors.textColor),
          titleLarge: TextStyle(color: AppColors.textColor, fontWeight: FontWeight.bold),
        ),
      ),
      home: const SplashScreen(),
    );
  }
}