import 'package:camp_aula_03/pages/calculator_page.dart';
import 'package:camp_aula_03/pages/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora IMC',
      theme: ThemeData(
        primaryColor: const Color(0xffC1007E),
        primarySwatch: MaterialColor(
          const Color(0xffC1007E).value,
          {
            50: Colors.pink.shade50,
            100: Colors.pink.shade100,
            200: Colors.pink.shade200,
            300: Colors.pink.shade300,
            400: Colors.pink.shade400,
            500: Colors.pink.shade500,
            600: Colors.pink.shade600,
            700: Colors.pink.shade700,
            800: Colors.pink.shade800,
            900: Colors.pink.shade900,
          },
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(),
        '/calculadora': (context) => const CalculatorPage(),
      },
    );
  }
}
