import 'package:default_guardian/constants/palette.dart';
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
        child: Container(
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
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "From",
                      style: TextStyle(color: Colors.white70, fontSize: 20),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "To",
                      style: TextStyle(color: Colors.white70, fontSize: 20),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Amount",
                      style: TextStyle(color: Colors.white70, fontSize: 20),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Set Weight of Scores",
                      style: TextStyle(color: Colors.white70, fontSize: 20),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Set Threshold of Overall Score",
                      style: TextStyle(color: Colors.white70, fontSize: 20),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  MaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Compatibility()));
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
