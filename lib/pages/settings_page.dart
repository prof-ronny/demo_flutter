// lib/pages/settings_page.dart

import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool notifications = true;
  bool animations = true;
  bool darkMode = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Configurações")),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Card(
            child: SwitchListTile(
              value: notifications,
              onChanged: (v) {
                setState(() {
                  notifications = v;
                });
              },
              title: const Text("Notificações"),
              secondary: const Icon(Icons.notifications),
            ),
          ),

          Card(
            child: SwitchListTile(
              value: animations,
              onChanged: (v) {
                setState(() {
                  animations = v;
                });
              },
              title: const Text("Animações"),
              secondary: const Icon(Icons.animation),
            ),
          ),

          Card(
            child: SwitchListTile(
              value: darkMode,
              onChanged: (v) {
                setState(() {
                  darkMode = v;
                });
              },
              title: const Text("Modo Escuro"),
              secondary: const Icon(Icons.dark_mode),
            ),
          ),

          const SizedBox(height: 30),

          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              gradient: const LinearGradient(
                colors: [Colors.cyan, Colors.blue, Colors.purple],
              ),
            ),
            child: const Center(
              child: Text(
                "Material 3 + Flutter",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
