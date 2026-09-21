import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'pages/dashboard_page.dart';
import 'pages/animations_page.dart';
import 'pages/profile_page.dart';
import 'pages/gallery_page.dart';
import 'pages/settings_page.dart';

void main() {
  runApp(const ShowcaseApp());
}

class ShowcaseApp extends StatelessWidget {
  const ShowcaseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Showcase',
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF0B1020),
        textTheme: GoogleFonts.poppinsTextTheme(ThemeData.dark().textTheme),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.cyanAccent,
          brightness: Brightness.dark,
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (_) => const DashboardPage(),
        '/animations': (_) => const AnimationsPage(),
        '/profile': (_) => const ProfilePage(),
        '/gallery': (_) => const GalleryPage(),
        '/settings': (_) => const SettingsPage(),
      },
    );
  }
}
