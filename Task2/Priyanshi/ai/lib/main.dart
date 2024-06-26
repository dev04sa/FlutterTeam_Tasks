import 'package:ai/global/constants.dart';
import 'package:ai/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_gemini/flutter_gemini.dart';

void main() async {
  await dotenv.load(fileName: '.env');
  Gemini.init(apiKey: apiUrl);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gemini ChatBot',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
