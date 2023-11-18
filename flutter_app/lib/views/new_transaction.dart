import 'dart:math';

import 'package:default_guardian/constants/palette.dart';
import 'package:default_guardian/constants/router.dart';
import 'package:default_guardian/views/compatiblity.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewTransaction extends StatefulWidget {
  const NewTransaction({super.key});

  @override
  State<NewTransaction> createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.bg,
      body: SafeArea(
        child: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "NEW TRANSACTION",
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
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "From",
                      style: TextStyle(color: Colors.white70, fontSize: 20),
                    ),
                  ),
                  DropdownButton<String>(
                    focusColor: ColorPalette.secbg,
                    dropdownColor: ColorPalette.secbg,
                    isExpanded: true,
                    items: <String>['A', 'B', 'C', 'D'].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: const TextStyle(color: Colors.white),
                        ),
                      );
                    }).toList(),
                    onChanged: (_) {},
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "To",
                      style: TextStyle(color: Colors.white70, fontSize: 20),
                    ),
                  ),
                  DropdownButton<String>(
                    focusColor: ColorPalette.secbg,
                    dropdownColor: ColorPalette.secbg,
                    isExpanded: true,
                    items: <String>['A', 'B', 'C', 'D'].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: const TextStyle(color: Colors.white),
                        ),
                      );
                    }).toList(),
                    onChanged: (value) {},
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Amount",
                      style: TextStyle(color: Colors.white70, fontSize: 20),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      color: ColorPalette.secbg,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: TextField(
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.start,
                        decoration: InputDecoration(
                            hintText: 'Enter Amount in INR',
                            border: InputBorder.none,
                            hintStyle:
                                TextStyle(color: Colors.white60, fontSize: 15)),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Set Weight of Scores",
                      style: TextStyle(color: Colors.white70, fontSize: 20),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Slider(
                      value: 20,
                      max: 100,
                      activeColor: ColorPalette.sliderclr,
                      inactiveColor: ColorPalette.sliderclr,
                      thumbColor: ColorPalette.blue,
                      divisions: 100,
                      onChanged: (double value) {
                        setState(() {
                          // _currentSliderValue = value;
                        });
                      },
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: min(
                            200, MediaQuery.of(context).size.width / 2 - 40),
                        height: 60,
                        color: const Color.fromRGBO(28, 29, 29, 1),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Transaction Score",
                              style: TextStyle(color: Colors.white70),
                            ),
                            Text(
                              "65%",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: min(
                            200, MediaQuery.of(context).size.width / 2 - 40),
                        height: 60,
                        color: const Color.fromRGBO(28, 29, 29, 1),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "ZK Proof Score",
                              style: TextStyle(color: Colors.white70),
                            ),
                            Text(
                              "65%",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Set Threshold of Overall Score",
                      style: TextStyle(color: Colors.white70, fontSize: 20),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Slider(
                      value: 20,
                      max: 100,
                      activeColor: ColorPalette.sliderclr,
                      inactiveColor: ColorPalette.sliderclr,
                      thumbColor: ColorPalette.blue,
                      divisions: 100,
                      onChanged: (double value) {
                        setState(() {
                          // _currentSliderValue = value;
                        });
                      },
                    ),
                  ),
                  Container(
                    width: min(200, MediaQuery.of(context).size.width / 2 - 40),
                    height: 60,
                    color: const Color.fromRGBO(28, 29, 29, 1),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Threshold set by you",
                          style: TextStyle(color: Colors.white70),
                        ),
                        Text(
                          "65",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  MaterialButton(
                    onPressed: () {
                      Navigator.push(context,
                          MyRoute(builder: (context) => const Compatibility()));
                    },
                    color: ColorPalette.blue,
                    minWidth: MediaQuery.of(context).size.width - 40,
                    height: 60,
                    child: const Text(
                      "CHECK COMPATIBILITY",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
