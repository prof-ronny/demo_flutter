// lib/pages/dashboard_page.dart

import 'package:flutter/material.dart';

import '../widgets/menu_card.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: const Color(0xFF10182B),
        child: ListView(
          children: [
            const DrawerHeader(
              child: Center(
                child: Text(
                  "Flutter Showcase",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.animation),
              title: const Text("Animações"),
              onTap: () => Navigator.pushNamed(context, '/animations'),
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text("Perfil"),
              onTap: () => Navigator.pushNamed(context, '/profile'),
            ),
            ListTile(
              leading: const Icon(Icons.photo_library),
              title: const Text("Galeria"),
              onTap: () => Navigator.pushNamed(context, '/gallery'),
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text("Configurações"),
              onTap: () => Navigator.pushNamed(context, '/settings'),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text("Flutter Multiplatform"),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 18,
          crossAxisSpacing: 18,
          children: [
            MenuCard(
              title: "Animações",
              subtitle: "Hero, AnimatedContainer e efeitos",
              icon: Icons.animation,
              color: Colors.purple,
              onTap: () => Navigator.pushNamed(context, '/animations'),
            ),
            MenuCard(
              title: "Perfil",
              subtitle: "UI moderna com glassmorphism",
              icon: Icons.person,
              color: Colors.blue,
              onTap: () => Navigator.pushNamed(context, '/profile'),
            ),
            MenuCard(
              title: "Galeria",
              subtitle: "Grid responsivo e Hero",
              icon: Icons.photo_library,
              color: Colors.orange,
              onTap: () => Navigator.pushNamed(context, '/gallery'),
            ),
            MenuCard(
              title: "Settings",
              subtitle: "Switches e Material 3",
              icon: Icons.settings,
              color: Colors.green,
              onTap: () => Navigator.pushNamed(context, '/settings'),
            ),
          ],
        ),
      ),
    );
  }
}
