import 'package:crypto_admin/screens/login_screen.dart';
import 'package:flutter/material.dart';

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
        scaffoldBackgroundColor: Color.fromARGB(1, 253, 253, 253), // Set the scaffold background color to white
      ),
      title: 'Crypto Admin',
      home: const LoginScreen(),
    );
  }
}
