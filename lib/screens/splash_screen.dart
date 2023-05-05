import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_component_ui/screens/main_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(30),
          color: const Color.fromRGBO(54, 64, 183, 1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image(
                image: const AssetImage('assets/splash.png'),
                height: size.height * 0.55,
              ),
              Text(
                'Spectrum UI',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: GoogleFonts.dmSans(
                      fontWeight: FontWeight.w700,
                    ).fontFamily,
                    fontSize: 36),
              ),
              Text(
                'A Plug and play UI component library',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: GoogleFonts.dmSans(fontWeight: FontWeight.w400)
                        .fontFamily,
                    fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
