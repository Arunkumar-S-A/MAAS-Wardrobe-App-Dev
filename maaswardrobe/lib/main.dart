import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MAASWardrobeApp(),
    );
  }
}

class MAASWardrobeApp extends StatefulWidget {
  @override
  _MAASWardrobeAppState createState() => _MAASWardrobeAppState();
}

class _MAASWardrobeAppState extends State<MAASWardrobeApp> {
  bool _isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: _isDarkMode ? Brightness.dark : Brightness.light,
        primaryColor: _isDarkMode ? Colors.teal : Colors.pinkAccent,
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: _isDarkMode ? Colors.teal : Colors.pinkAccent,
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: _isDarkMode ? Colors.teal : Colors.pinkAccent,
          selectedItemColor: _isDarkMode ? Colors.white : Colors.white,
          unselectedItemColor: _isDarkMode ? Colors.grey : Colors.grey,
        ),
      ),
      home: HomePage(
        isDarkMode: _isDarkMode,
        onThemeChanged: () {
          setState(() {
            _isDarkMode = !_isDarkMode;
          });
        },
      ),
    );
  }
}
