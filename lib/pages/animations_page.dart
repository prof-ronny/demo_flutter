// lib/pages/animations_page.dart

import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';

class AnimationsPage extends StatefulWidget {
  const AnimationsPage({super.key});

  @override
  State<AnimationsPage> createState() => _AnimationsPageState();
}

class _AnimationsPageState extends State<AnimationsPage> {
  bool expanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Animações")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FadeInDown(
              child: const Text(
                "Flutter Animations",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 40),

            GestureDetector(
              onTap: () {
                setState(() {
                  expanded = !expanded;
                });
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 700),
                curve: Curves.easeInOut,
                width: expanded ? 300 : 180,
                height: expanded ? 300 : 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(expanded ? 40 : 100),
                  gradient: const LinearGradient(
                    colors: [Colors.cyan, Colors.purple],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.cyan.withOpacity(0.5),
                      blurRadius: 30,
                    ),
                  ],
                ),
                child: const Center(child: Icon(Icons.flutter_dash, size: 80)),
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              "Toque para animar",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
