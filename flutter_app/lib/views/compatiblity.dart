import 'dart:math';

import 'package:default_guardian/constants/palette.dart';
import 'package:default_guardian/constants/router.dart';
import 'package:default_guardian/views/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gauge_indicator/gauge_indicator.dart';

class Compatibility extends StatefulWidget {
  Compatibility({super.key, required this.data});
  var data;

  @override
  State<Compatibility> createState() => _CompatibilityState();
}

class _CompatibilityState extends State<Compatibility> {
  @override
  void initState() {
    // log(widget.data);
    super.initState();
  }

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
                                  child: AnimatedRadialGauge(
                                      duration: const Duration(seconds: 3),
                                      curve: Curves.easeIn,
                                      radius: 100,
                                      value: widget.data["tscore"] * 1.0,
                                      axis: const GaugeAxis(
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
                                Text(
                                  widget.data["tscore"].toString(),
                                  style: const TextStyle(
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
                                  child: AnimatedRadialGauge(
                                      duration: const Duration(seconds: 3),
                                      curve: Curves.easeIn,
                                      radius: 100,
                                      value: widget.data["zkscore"] * 1.0,
                                      axis: const GaugeAxis(
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
                                Text(
                                  widget.data["zkscore"].toString(),
                                  style: const TextStyle(
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
                                child: AnimatedRadialGauge(
                                    duration: const Duration(seconds: 3),
                                    curve: Curves.easeIn,
                                    radius: 100,
                                    value: widget.data["overallscore"] * 1.0,
                                    axis: const GaugeAxis(
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
                              Text(
                                widget.data["overallscore"].toString(),
                                style: const TextStyle(
                                    fontSize: 25, color: Colors.white),
                              )
                            ],
                          ),
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Threshold Score: ${widget.data["threshold"].toString()}",
                      style:
                          const TextStyle(fontSize: 20, color: Colors.white70),
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

                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: widget.data["overallscore"] >
                                  widget.data["threshold"]
                              ? [
                                  const Text(
                                    "Result:",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  const Text(
                                    "SUCCESS",
                                    style: TextStyle(
                                        color: Colors.greenAccent,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30),
                                  ),
                                  Text(
                                    "User passed the required score for the transaction to initiate successfully. Currently, the risk factor is ${100 - widget.data["overallscore"]}%, which means there is a predicted chance of ${100 - widget.data["overallscore"]}% that the transaction would fail, whereas the threshold allows ${100 - widget.data["threshold"]}% of risk! ",
                                    style:
                                        const TextStyle(color: Colors.white70),
                                  )
                                ]
                              : [
                                  const Text(
                                    "Result:",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  const Text(
                                    "FAILURE",
                                    style: TextStyle(
                                        color: Colors.redAccent,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30),
                                  ),
                                  Text(
                                    "User couldn't pass the required score for the transaction to initiate successfully. Currently, the risk factor is ${100 - widget.data["overallscore"]}%, which means there is a predicted chance of ${100 - widget.data["overallscore"]}% that the transaction would fail, whereas the threshold allows only ${100 - widget.data["threshold"]}% of risk! ",
                                    style:
                                        const TextStyle(color: Colors.white70),
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
