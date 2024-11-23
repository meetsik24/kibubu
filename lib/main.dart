import 'package:flutter/material.dart';
import '/colors.dart'; // Import the color file

void main() {
  runApp(KibubuApp());
}

class KibubuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kibubu',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: KibubuColors.primaryColor,
        scaffoldBackgroundColor: KibubuColors.backgroundLight,
        colorScheme: ColorScheme.light(
          primary: KibubuColors.primaryColor,
          secondary: KibubuColors.secondaryColor2,
        ),
        textTheme: TextTheme(
          bodyLarge: TextStyle(color: KibubuColors.textPrimary), // Updated name
          bodyMedium: TextStyle(color: KibubuColors.textSecondary), // Updated name
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: KibubuColors.primaryColor,
          titleTextStyle: TextStyle(
            color: KibubuColors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
          iconTheme: IconThemeData(color: KibubuColors.white),
        ),
        buttonTheme: ButtonThemeData(
          buttonColor: KibubuColors.primaryColor,
          textTheme: ButtonTextTheme.primary,
        ),
      ),
      home: KibubuHomePage(),
    );
  }
}

class KibubuHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kibubu'),
      ),
      body: Center(
        child: Text(
          'Welcome to Kibubu!',
          style: TextStyle(
            color: KibubuColors.textPrimary, // Explicitly setting the text color
            fontSize: 20.0,
          ),
        ),
      ),
    );
  }
}