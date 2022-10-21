import 'package:flutter/material.dart';
import 'package:jottings/create_note.dart';
import 'package:jottings/home_screen.dart';
import 'package:jottings/premiun_page.dart';

void main() {
  runApp(const MyJotts());
}

class MyJotts extends StatelessWidget {
  const MyJotts({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // MaterialApp and Scaffold Settings
      debugShowCheckedModeBanner: false,
      title: 'Jottings',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromRGBO(248, 238, 226, 1),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromRGBO(248, 238, 226, 1),
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'Nunito',
          ),
          iconTheme: IconThemeData(color: Colors.black, opacity: 20, size: 25),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
