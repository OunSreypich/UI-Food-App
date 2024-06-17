import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.robotoTextTheme(),
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
