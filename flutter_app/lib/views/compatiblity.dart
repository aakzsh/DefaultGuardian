import 'dart:math';

import 'package:default_guardian/constants/palette.dart';
import 'package:default_guardian/constants/router.dart';
import 'package:default_guardian/views/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gauge_indicator/gauge_indicator.dart';

class Compatibility extends StatefulWidget {
  const Compatibility({super.key});

  @override
  State<Compatibility> createState() => _CompatibilityState();
}

class _CompatibilityState extends State<Compatibility> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.bg,
      body: SafeArea(
        child: SizedBox(
            width: double.maxFinite,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20),
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
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                        width: double.maxFinite,
                        decoration: const BoxDecoration(
                            color: Color.fromRGBO(28, 29, 29, 1),
                            gradient: LinearGradient(
                              begin: Alignment(-1.0, 0.0),
                              end: Alignment(1.0, 0.0),
                              colors: [
                                Color.fromRGBO(28, 29, 29, 1),
                                Color.fromRGBO(73, 73, 73, 0)
                              ],
                              stops: [0, 1],
                              transform: GradientRotation(pi / 4),
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  "Transaction Score",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white70),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                SizedBox(
                                  width: min(
                                      MediaQuery.of(context).size.width / 2 -
                                          60,
                                      180),
                                  child: const AnimatedRadialGauge(
                                      duration: Duration(seconds: 1),
                                      curve: Curves.elasticOut,
                                      radius: 100,
                                      value: 23,
                                      axis: GaugeAxis(
                                        min: 0,
                                        max: 100,
                                        degrees: 180,

                                        /// Set the background color and axis thickness.
                                        style: GaugeAxisStyle(
                                          thickness: 15,
                                          background:
                                              Color.fromRGBO(38, 255, 242, 1),
                                          segmentSpacing: 4,
                                        ),

                                        /// Define the pointer that will indicate the progress (optional).
                                        pointer: GaugePointer.needle(
                                          height: 80,
                                          width: 20,
                                          borderRadius: 16,
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                        ),

                                        progressBar: GaugeProgressBar.rounded(
                                          color: Color.fromRGBO(255, 90, 38, 1),
                                        ),
                                      )),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  "23",
                                  style: TextStyle(
                                      fontSize: 25, color: Colors.white),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  "ZK Proof Score",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white70),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                SizedBox(
                                  width: min(
                                      MediaQuery.of(context).size.width / 2 -
                                          60,
                                      180),
                                  child: const AnimatedRadialGauge(
                                      duration: Duration(seconds: 1),
                                      curve: Curves.elasticOut,
                                      radius: 100,
                                      value: 23,
                                      axis: GaugeAxis(
                                        min: 0,
                                        max: 100,
                                        degrees: 180,

                                        /// Set the background color and axis thickness.
                                        style: GaugeAxisStyle(
                                          thickness: 15,
                                          background:
                                              Color.fromRGBO(38, 255, 242, 1),
                                          segmentSpacing: 4,
                                        ),

                                        /// Define the pointer that will indicate the progress (optional).
                                        pointer: GaugePointer.needle(
                                          height: 80,
                                          width: 20,
                                          borderRadius: 16,
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                        ),

                                        progressBar: GaugeProgressBar.rounded(
                                          color: Color.fromRGBO(255, 90, 38, 1),
                                        ),
                                      )),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  "23",
                                  style: TextStyle(
                                      fontSize: 25, color: Colors.white),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ],
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                        width: double.maxFinite,
                        // height: 150,

                        decoration: const BoxDecoration(
                            color: Color.fromRGBO(28, 29, 29, 1),
                            gradient: LinearGradient(
                              begin: Alignment(-1.0, 0.0),
                              end: Alignment(1.0, 0.0),
                              colors: [
                                Color.fromRGBO(28, 29, 29, 1),
                                Color.fromRGBO(73, 73, 73, 0)
                              ],
                              stops: [0, 1],
                              transform: GradientRotation(pi / 4),
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const Text(
                                "Overall Score",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white70),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                width: min(
                                    MediaQuery.of(context).size.width - 100,
                                    400),
                                child: const AnimatedRadialGauge(
                                    duration: Duration(seconds: 1),
                                    curve: Curves.elasticOut,
                                    radius: 100,
                                    value: 23,
                                    axis: GaugeAxis(
                                      min: 0,
                                      max: 100,
                                      degrees: 180,

                                      /// Set the background color and axis thickness.
                                      style: GaugeAxisStyle(
                                        thickness: 15,
                                        background:
                                            Color.fromRGBO(38, 255, 242, 1),
                                        segmentSpacing: 4,
                                      ),

                                      /// Define the pointer that will indicate the progress (optional).
                                      pointer: GaugePointer.needle(
                                        height: 80,
                                        width: 20,
                                        borderRadius: 16,
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                      ),

                                      progressBar: GaugeProgressBar.rounded(
                                        color: Color.fromRGBO(255, 90, 38, 1),
                                      ),
                                    )),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                "23",
                                style: TextStyle(
                                    fontSize: 25, color: Colors.white),
                              )
                            ],
                          ),
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Threshold Score: 63",
                      style: TextStyle(fontSize: 20, color: Colors.white70),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          color: Color.fromRGBO(28, 29, 29, 1),
                          borderRadius: BorderRadius.all(Radius.circular(10))),

                      width: double.maxFinite,
                      // height: ,

                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Result:",
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              "SUCCESS",
                              style: TextStyle(
                                  color: Colors.greenAccent,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30),
                            ),
                            Text(
                              "User passed the required score for the transaction to initiate successfully. Currently, the risk factor is 33%, which means there is a predicted chance of 33% that the transaction would fail, whereas the threshold allows 37% of risk! ",
                              style: TextStyle(color: Colors.white70),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Hero(
                      tag: "buttonhero",
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MyRoute(
                                  builder: (context) => const WelcomeScreen()),
                              (route) => false);
                        },
                        color: ColorPalette.blue,
                        minWidth: MediaQuery.of(context).size.width - 40,
                        height: 60,
                        child: const Text(
                          "GO TO HOME",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
