import 'package:flutter/material.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const NeoBankApp());
}

class NeoBankApp extends StatelessWidget {
  const NeoBankApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NeoBank',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF00D4AA), // Verde neon bank
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
