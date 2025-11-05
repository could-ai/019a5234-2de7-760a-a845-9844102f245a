import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'features/auth/presentation/screens/register_screen.dart';

void main() {
  runApp(const BaddelApp());
}

class BaddelApp extends StatelessWidget {
  const BaddelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'بدّل',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('ar', ''), // Arabic, no country code
      ],
      locale: const Locale('ar', ''),
      theme: ThemeData(
        primarySwatch: Colors.teal,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Tajawal', // A good font for Arabic
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      home: const RegisterScreen(),
    );
  }
}
