import 'package:default_guardian/constants/palette.dart';
import 'package:default_guardian/views/single_user.dart';
import 'package:flutter/material.dart';

class TransactionTile extends StatelessWidget {
  const TransactionTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(height: 60,
     
      decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),
       color: Color.fromRGBO(28,29,29,1),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(padding: EdgeInsets.fromLTRB(20, 2, 0, 2),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text("NEFT/RTGS XYZ", style: TextStyle(color: Colors.white),),
            Text("November 16, 2023",  style: TextStyle(color: Colors.white70, fontSize: 12), ),
          ],),
          ), 
          
          Padding(padding: EdgeInsets.only(right: 10),
          child: Text("+50,000", style: TextStyle(color: Colors.greenAccent),),
          )
      ]),
      ),
    );
  }
}