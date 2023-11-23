import 'dart:math';

import 'package:default_guardian/constants/palette.dart';
import 'package:default_guardian/constants/router.dart';
import 'package:default_guardian/constants/accounts.dart';
import 'package:default_guardian/constants/user_stats.dart';
import 'package:default_guardian/services/transaction_score/t_score.dart';
import 'package:default_guardian/services/zero_knowledge_score/zk_score.dart';
import 'package:default_guardian/views/compatiblity.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewTransaction extends StatefulWidget {
  const NewTransaction({super.key});

  @override
  State<NewTransaction> createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  String toAcc = Accounts.accountList[0], fromAcc = Accounts.accountList[0];
  int tscoreWeight = 50;
  int overallScoreWeight = 60;
  double amount = 0.0;
  bool loading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.bg,
      body: SafeArea(
        child: loading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : SizedBox(
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
                            style:
                                TextStyle(color: Colors.white70, fontSize: 20),
                          ),
                        ),
                        DropdownButton(
                          focusColor: ColorPalette.secbg,
                          dropdownColor: ColorPalette.secbg,
                          isExpanded: true,
                          hint: Text(
                            fromAcc,
                            style: const TextStyle(color: Colors.white),
                          ),
                          items: Accounts.accountList.map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: const TextStyle(color: Colors.white),
                              ),
                            );
                          }).toList(),
                          onChanged: (newval) {
                            // print("$newval changed");
                            setState(() {
                              fromAcc = newval!;
                            });
                          },
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "To",
                            style:
                                TextStyle(color: Colors.white70, fontSize: 20),
                          ),
                        ),
                        DropdownButton<String>(
                          hint: Text(
                            toAcc,
                            style: const TextStyle(color: Colors.white),
                          ),
                          focusColor: ColorPalette.secbg,
                          dropdownColor: ColorPalette.secbg,
                          isExpanded: true,
                          items: Accounts.accountList.map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: const TextStyle(color: Colors.white),
                              ),
                            );
                          }).toList(),
                          onChanged: (newval) {
                            // print("$newval changed");
                            setState(() {
                              toAcc = newval!;
                            });
                          },
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Amount",
                            style:
                                TextStyle(color: Colors.white70, fontSize: 20),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            color: ColorPalette.secbg,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: TextField(
                              onChanged: (String val) {
                                setState(() {
                                  amount = double.parse(val);
                                });
                              },
                              keyboardType: TextInputType.number,
                              style: const TextStyle(color: Colors.white),
                              textAlign: TextAlign.start,
                              decoration: const InputDecoration(
                                  hintText: 'Enter Amount in INR',
                                  border: InputBorder.none,
                                  hintStyle: TextStyle(
                                      color: Colors.white60, fontSize: 15)),
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
                            style:
                                TextStyle(color: Colors.white70, fontSize: 20),
                          ),
                        ),
                        const Align(
                          alignment: Alignment.topLeft,
                          child: InkWell(
                              child: Text(
                            "how are these scores calculated?",
                            style: TextStyle(color: Colors.white70),
                          )),
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: Slider(
                            value: tscoreWeight.toDouble(),
                            max: 100,
                            activeColor: ColorPalette.sliderclr,
                            inactiveColor: ColorPalette.sliderclr,
                            thumbColor: ColorPalette.blue,
                            divisions: 100,
                            onChanged: (double value) {
                              setState(() {
                                tscoreWeight = value.round();
                                // tscore_weight = int.parse(value.toString());
                                // _currentSliderValue = value;
                              });
                            },
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              width: min(200,
                                  MediaQuery.of(context).size.width / 2 - 40),
                              height: 60,
                              color: const Color.fromRGBO(28, 29, 29, 1),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    "Transaction Score",
                                    style: TextStyle(color: Colors.white70),
                                  ),
                                  Text(
                                    "$tscoreWeight%",
                                    style: const TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: min(200,
                                  MediaQuery.of(context).size.width / 2 - 40),
                              height: 60,
                              color: const Color.fromRGBO(28, 29, 29, 1),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    "ZK Proof Score",
                                    style: TextStyle(color: Colors.white70),
                                  ),
                                  Text(
                                    "${100 - tscoreWeight}%",
                                    style: const TextStyle(color: Colors.white),
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
                            style:
                                TextStyle(color: Colors.white70, fontSize: 20),
                          ),
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: Slider(
                            value: overallScoreWeight.toDouble(),
                            max: 100,
                            activeColor: ColorPalette.sliderclr,
                            inactiveColor: ColorPalette.sliderclr,
                            thumbColor: ColorPalette.blue,
                            divisions: 100,
                            onChanged: (double value) {
                              setState(() {
                                overallScoreWeight = value.round();
                                // _currentSliderValue = value;
                              });
                            },
                          ),
                        ),
                        Container(
                          width:
                              min(240, MediaQuery.of(context).size.width / 2),
                          height: 60,
                          color: const Color.fromRGBO(28, 29, 29, 1),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "Threshold set by you",
                                style: TextStyle(color: Colors.white70),
                              ),
                              Text(
                                overallScoreWeight.toString(),
                                style: const TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        MaterialButton(
                          onPressed: () async {
                            Future<void> showMyDialog() async {
                              return showDialog<void>(
                                context: context,
                                barrierDismissible:
                                    false, // user must tap button!
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: const Text('Wrong Values'),
                                    content: const SingleChildScrollView(
                                      child: ListBody(
                                        children: <Widget>[
                                          Text(
                                            'Same Accounts Alert',
                                            style: TextStyle(
                                                color: Colors.redAccent),
                                          ),
                                          Text(
                                              'The Sender and Receiver accounts must be different. Please make the changes accordingly'),
                                        ],
                                      ),
                                    ),
                                    actions: <Widget>[
                                      TextButton(
                                        child: const Text('Okay'),
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                      ),
                                    ],
                                  );
                                },
                              );
                            }

                            if (fromAcc == toAcc) {
                              await showMyDialog();
                            } else {
                              setState(() {
                                loading = true;
                              });
                              final tscore = await TxnScore().calculateScore();

                              final zkscore = await ZK().encryptscore(
                                  UserStats.stats[fromAcc], amount);
                              // print(zkscore);
                              final overallScore = ((tscoreWeight * tscore +
                                          (100 - tscoreWeight) * zkscore) /
                                      100)
                                  .round();
                              // print("overall score is $overallScore");
                              setState(() {
                                loading = false;
                              });

                              final showData = {
                                "tscore": tscore,
                                "zkscore": zkscore,
                                "overallscore": overallScore,
                                "threshold": overallScoreWeight
                              };
                              if (!mounted) return;
                              Navigator.push(
                                  context,
                                  MyRoute(
                                      builder: (context) => Compatibility(
                                            data: showData,
                                          )));
                            }

                            // await crypto();
                            // Navigator.push(context,
                            //     MyRoute(builder: (context) => const Compatibility()));
                          },
                          color: ColorPalette.blue,
                          minWidth: MediaQuery.of(context).size.width - 40,
                          height: 60,
                          child: const Text(
                            "CHECK COMPATIBILITY",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
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
