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
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromRGBO(254, 206, 1, 1),
            primary: const Color.fromRGBO(254, 206, 1, 1),
          ),
          useMaterial3: true,
          fontFamily: 'Mooli',
          appBarTheme: const AppBarTheme(
              toolbarHeight: 100,
              elevation: 0,
              titleSpacing: 40,
              centerTitle: true,
              titleTextStyle: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
              backgroundColor: Colors.white),
          inputDecorationTheme: const InputDecorationTheme(
            prefixIconColor: Colors.black,
            hintStyle: TextStyle(fontWeight: FontWeight.bold),
          ),
          textTheme: const TextTheme(
            bodyMedium: TextStyle(fontSize: 20),
            headlineLarge: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        debugShowCheckedModeBanner: false,
        home: const ShoopingAppMainPage());
  }
}
