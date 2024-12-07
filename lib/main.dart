import 'package:doctor/pages/log_in.dart';
import 'package:doctor/pages/sign_up.dart';
import 'package:doctor/pages/welcome.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomePage(),
        '/login': (context) => LogInPage(),
        '/signup': (context) => SignUpPage(),
      },
    );
  }
}
