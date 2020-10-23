import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_movie/Home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movies App',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Movies',
            style: GoogleFonts.pacifico(),
          ),
        ),
        body: Home(),
      ),
    );
  }
}

