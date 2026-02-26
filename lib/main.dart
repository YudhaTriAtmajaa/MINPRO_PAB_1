import 'package:flutter/material.dart';
import 'pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    fontFamily: 'Poppins',
    primaryColor: Color(0xFF1B5E20),
    scaffoldBackgroundColor: Color(0xFFE8F5E9),

    appBarTheme: AppBarTheme(
      elevation: 0,
      centerTitle: true,
      backgroundColor: Color(0xFF1B5E20),
      foregroundColor: Colors.white,
    ),

    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Color(0xFF1B5E20),
      foregroundColor: Colors.white,
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xFF2E7D32),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    ),

    colorScheme: ColorScheme.light(
      primary: Color(0xFF1B5E20),
      secondary: Color(0xFF66BB6A),
    ),
  );

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Toko Baju Muslim 🌙',
      theme: lightTheme,
      home: HomePage(),
    );
  }
}
