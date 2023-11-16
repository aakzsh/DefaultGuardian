import 'package:default_guardian/constants/palette.dart';
import 'package:default_guardian/views/new_transaction.dart';
import 'package:default_guardian/widgets/UserTile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Users extends StatefulWidget {
  const Users({super.key});

  @override
  State<Users> createState() => _UsersState();
}

class _UsersState extends State<Users> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.bg,
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
                        "DEFAULT GUARDIAN",
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
                  SizedBox(height: 30,),
                  Align(alignment: Alignment.topLeft, child: Text("Users", style: TextStyle(color: Colors.white70, fontSize: 25),),),
                 Expanded(child: ListView.builder(
  itemCount: 10,
  itemBuilder: (BuildContext context, int index) {
    return UserTile();
  },
)),
                    MaterialButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const NewTransaction()));
                    },
                    
                    color: ColorPalette.blue,
                    minWidth: MediaQuery.of(context).size.width - 40,
                    height: 60,
                    child:const Text("INITIATE TRANSACTION", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),),
                  ),
                ],
              ),
            ),
        ),
      ),
    );
  }
}
