import 'package:flutter/material.dart';
import 'screens/welcome_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
      theme: ThemeData(
        fontFamily: "Suwannaphum",
        scaffoldBackgroundColor: Colors.deepOrange[200],
        appBarTheme: AppBarTheme(backgroundColor: Colors.deepOrange[300]),
      ),
    );
  }
}
