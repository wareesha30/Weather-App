// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Weather App"),
      ),
      body: Container(
        child: Center(
          child: Text(
            'Flutter Weather App',
            style: GoogleFonts.lato(
              fontsize: 24,
            ),
          ),
        ),
      ),
    );
  }
}
