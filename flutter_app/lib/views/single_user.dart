import 'package:default_guardian/constants/accounts.dart';
import 'package:default_guardian/constants/palette.dart';
import 'package:default_guardian/constants/router.dart';
import 'package:default_guardian/constants/user_transactions.dart';
import 'package:default_guardian/services/url_opener/url_opener.dart';
import 'package:default_guardian/views/new_transaction.dart';
import 'package:default_guardian/widgets/transaction_tile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SingleUser extends StatefulWidget {
  const SingleUser({super.key, required this.accountno});
  final String accountno;

  @override
  State<SingleUser> createState() => _SingleUserState();
}

class _SingleUserState extends State<SingleUser> {
  bool calculated = false;
  bool loadingScore = true;
  int tscore = 0;
  @override
  Widget build(BuildContext context) {
    // print(UserTransactions.txns[int.parse(accountno)]?.length);
    return Scaffold(
      backgroundColor: ColorPalette.bg,
      body: SafeArea(
        child: SizedBox(
          width: double.maxFinite,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Hero(
                      tag: "usernamehero",
                      child: Text(
                        Accounts.accountNameMapping[widget.accountno]!,
                        style: GoogleFonts.kanit(
                            color: ColorPalette.blue,
                            fontWeight: FontWeight.w600,
                            fontSize: 30,
                            height: 0.9,
                            decoration: TextDecoration.none),
                      ),
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
                Hero(
                  tag: "buttonhero",
                  child: MaterialButton(
                    onPressed: () async {
                      Navigator.push(
                          context,
                          MyRoute(
                              builder: (context) => const NewTransaction()));
                      // setState(() {
                      //   calculated = true;
                      //   loadingScore = true;
                      // });
                      // final int score = await TxnScore().calculateScore();
                      // setState(() {
                      //   tscore = score;
                      //   loadingScore = false;
                      // });
                    },
                    color: ColorPalette.blue,
                    minWidth: MediaQuery.of(context).size.width - 40,
                    height: 60,
                    child: const Text(
                      "CALCULATE TRANSACTION SCORE",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: InkWell(
                      onTap: () async {
                        await UrlOpener.launch(
                            "https://github.com/aakzsh/DefaultGuardian/blob/master/TERMS.md");
                      },
                      child: const Text(
                        "how is this score calculated?",
                        style: TextStyle(color: Colors.white70),
                      )),
                ),
                calculated
                    ? (loadingScore
                        ? const SizedBox(
                            child: Center(
                              child: CircularProgressIndicator(),
                            ),
                          )
                        : Text(
                            "The Transaction Score is $tscore",
                            style: const TextStyle(color: Colors.white),
                          ))
                    : const SizedBox(
                        height: 0,
                      ),
                const SizedBox(
                  height: 30,
                ),
                const Hero(
                  tag: "titletexthero",
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Recent Transactions",
                      style: TextStyle(
                          color: Colors.white70,
                          fontSize: 25,
                          decoration: TextDecoration.none),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: InkWell(
                      onTap: () async {
                        await UrlOpener.launch(
                            "https://github.com/aakzsh/DefaultGuardian/blob/master/TERMS.md");
                      },
                      child: const Text(
                        "where is this data coming from?",
                        style: TextStyle(color: Colors.white70),
                      )),
                ),
                Expanded(
                    child: ListView.builder(
                  itemCount: UserTransactions
                      .txns[int.parse(widget.accountno)]?.length,
                  itemBuilder: (BuildContext context, int index) {
                    return TransactionTile(
                        data: UserTransactions.txns[int.parse(widget.accountno)]
                            ?[index]);
                  },
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
