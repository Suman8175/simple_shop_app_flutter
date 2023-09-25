import 'package:flutter/material.dart';
import 'package:simple_shop_app_flutter/shoping_app_main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: const ColorScheme.light(),
        useMaterial3: true,
        fontFamily: 'Mooli',
        textTheme: const TextTheme(
            bodyMedium: TextStyle(fontSize: 24),
            headlineMedium: TextStyle(fontSize: 58)),
      ),
      home: const ShoopingAppMainPage(),
    );
  }
}
