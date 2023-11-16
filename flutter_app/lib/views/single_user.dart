import 'package:default_guardian/constants/palette.dart';
import 'package:default_guardian/views/new_transaction.dart';
import 'package:default_guardian/views/users.dart';
import 'package:default_guardian/widgets/TransactionTile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SingleUser extends StatefulWidget {
  const SingleUser({super.key});

  @override
  State<SingleUser> createState() => _SingleUserState();
}

class _SingleUserState extends State<SingleUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: ColorPalette.bg,
    body: SafeArea(
      child: Container(
          width: double.maxFinite,
          child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "John Doe",
                        style: GoogleFonts.kanit(
                            color: ColorPalette.blue,
                            fontWeight: FontWeight.w600,
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
                    MaterialButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const NewTransaction()));
                    },
                    
                    color: ColorPalette.blue,
                    minWidth: MediaQuery.of(context).size.width - 40,
                    height: 60,
                    child:const Text("CALCULATE TRANSACTION SCORE", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),),
                  ),
                  SizedBox(height: 5,),
                  Align(alignment: Alignment.topRight, child: InkWell(child: Text("how is this score calculated?", style: TextStyle(color: Colors.white70),)),),
                  SizedBox(height: 30,),
                  Align(alignment: Alignment.topLeft, child: Text("Past Transactions", style: TextStyle(color: Colors.white70, fontSize: 25),),),
                   SizedBox(height: 5,),
                  Align(alignment: Alignment.topLeft, child: InkWell(child: Text("where is this data coming from?", style: TextStyle(color: Colors.white70),)),),
                         Expanded(child: ListView.builder(
  itemCount: 10,
  itemBuilder: (BuildContext context, int index) {
    return TransactionTile();
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