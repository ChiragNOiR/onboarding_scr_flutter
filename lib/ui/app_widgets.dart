import 'package:build_one/ui/pages/Login%20Page/sign_in.dart';
import 'package:build_one/ui/pages/Onboarding%20Screen/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Application",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: GoogleFonts.dmSans().fontFamily,
        scaffoldBackgroundColor: Color(0xFFFFE425),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFFFE425),
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.white),
          toolbarTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          )
        )
      ),
      initialRoute: "dashboard",
      routes: {
        "dashboard":(context) =>  OnboardingScreen(),
      },
    );
  }
}