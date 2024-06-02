import 'package:flutter/material.dart';
import 'package:my_crudapp/login_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      debugShowCheckedModeBanner: false,
       initialRoute: "/",
      routes:{
        "/":(context) => LoginPage(),
      }
    );
    
  
  }
}