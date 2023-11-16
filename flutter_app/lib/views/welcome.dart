import 'package:default_guardian/constants/palette.dart';
import 'package:default_guardian/views/users.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: ColorPalette.bg,
      body: SizedBox(
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:   [
            Column(
              children: [
                Image.asset(
                  "assets/logo.png",
                  width: 150,
                ),
            const    SizedBox(height: 30,),
                Text(
                  "DEFAULT\nGUARDIAN",
                  style: GoogleFonts.kanit(
                    color: ColorPalette.blue,
                      fontWeight: FontWeight.w800,
                      fontSize: 50,
                      height: 0.9
                  ),
                  textAlign: TextAlign.center,
                ),
             const   SizedBox(height: 10,),
             const   Text(
                  "lets you predict if a transaction is prone to\ndefault and gives a score to assess the risk.",
                  style: TextStyle(color: Colors.white70),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MaterialButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const Users()));
                  },
                  
                  color: ColorPalette.blue,
                  minWidth: MediaQuery.of(context).size.width - 40,
                  height: 60,
                  child:const Text("START", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),
                ),
                const SizedBox(height: 10,),
              const  InkWell(
                  child: Text(
                    "terms and usage",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
