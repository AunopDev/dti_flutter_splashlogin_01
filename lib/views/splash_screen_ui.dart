// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dti_flutter_splashlogin_01/views/login_ui.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreenUI extends StatefulWidget {
  const SplashScreenUI({super.key});

  @override
  State<SplashScreenUI> createState() => _SplashScreenUIState();
}

class _SplashScreenUIState extends State<SplashScreenUI> {
  @override
  void initState() {
    Future.delayed(
      Duration(
        seconds: 3,
      ),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => LoginUI(),
        ),
      ),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/logo.png',
                  width: MediaQuery.of(context).size.width * 0.4,
                ),
                Container(
                  height: MediaQuery.of(context).size.width * 0.1,
                ),
                Text(
                  'DTI Flutter Splash Login 01',
                  style: GoogleFonts.itim(
                    fontSize: MediaQuery.of(context).size.width * 0.05,
                    color: Colors.amber,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'V.1.0.0',
                  style: GoogleFonts.itim(
                    color: Colors.grey[300],
                  ),
                ),
                Text(
                  'Created by : Aunop Chinnapong 😎',
                  style: GoogleFonts.itim(
                    color: Colors.grey[300],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.width * 0.035,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
