import 'package:default_guardian/constants/palette.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Compatibility extends StatefulWidget {
  const Compatibility({super.key});

  @override
  State<Compatibility> createState() => _CompatibilityState();
}

class _CompatibilityState extends State<Compatibility> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: ColorPalette.bg,
    body: SafeArea(
      child: Container(width: double.maxFinite,
      child: SingleChildScrollView(
        child:  Padding(padding: EdgeInsets.all(20),
      child: Column(
        children: [
           Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "TRANSACTION\nCOMPATIBILITY",
                          style: GoogleFonts.kanit(
                              color: ColorPalette.blue,
                              fontWeight: FontWeight.w700,
                              fontSize: 30,
                              height: 0.9),
                        ),
                        Image.asset(
                          "assets/logo.png",
                          width: 40,
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Container(
                      width: double.maxFinite,
                      height: 150,
                      color: Color.fromRGBO(28, 29, 29, 1),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      width: double.maxFinite,
                      height: 150,
                      color: Color.fromRGBO(28, 29, 29, 1),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      width: double.maxFinite,
                      height: 150,
                      color: Color.fromRGBO(28, 29, 29, 1),
                    )
        ],
      ),
      ),
      )
      ),
    ),
    );
  }
}