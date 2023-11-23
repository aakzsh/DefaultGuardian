import 'package:default_guardian/constants/palette.dart';
import 'package:default_guardian/constants/router.dart';
import 'package:default_guardian/services/url_opener/url_opener.dart';
import 'package:default_guardian/views/users.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import "dart:math";

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
          children: [
            Column(
              children: [
                Hero(
                  tag: "logohero",
                  child: Image.asset(
                    "assets/logo.png",
                    width: 150,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Hero(
                    tag: "texthero",
                    child: SizedBox(
                      child: Text(
                        "DEFAULT\nGUARDIAN",
                        style: GoogleFonts.kanit(
                          color: ColorPalette.blue,
                          fontWeight: FontWeight.w800,
                          fontSize: 50,
                          height: 0.9,
                          decoration: TextDecoration.none,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    )),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "lets you predict if a transaction is prone to\ndefault and gives a score to assess the risk.",
                  style: TextStyle(color: Colors.white70),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Hero(
                  tag: "buttonhero",
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(context,
                          MyRoute(builder: (context) => const Users()));
                    },
                    color: ColorPalette.blue,
                    minWidth: min(MediaQuery.of(context).size.width - 40, 400),
                    height: 60,
                    child: const Text(
                      "START",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () async {
                    await UrlOpener.launch("https://youtube.com");
                  },
                  child: const Text(
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
