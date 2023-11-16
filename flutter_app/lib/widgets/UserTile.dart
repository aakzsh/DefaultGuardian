import 'package:default_guardian/constants/palette.dart';
import 'package:default_guardian/views/single_user.dart';
import 'package:flutter/material.dart';

class UserTile extends StatelessWidget {
  const UserTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(height: 100,
     
      decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),
       color: Color.fromRGBO(28,29,29,1),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(padding: EdgeInsets.fromLTRB(20, 5, 0, 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text("John Doe", style: TextStyle(color: Colors.white),),
            Text("Acc No. 1234567890",  style: TextStyle(color: Colors.white70, fontSize: 12), ),
          ],),
          ), InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>SingleUser()));
            },
            child: Container(
              
              height: double.maxFinite,
              width: 100,
                decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/tileright.png",), fit: BoxFit.fill)),
                 child:     Padding(
                   padding: const EdgeInsets.only(right: 5),
                   child: Align( 
                    alignment: Alignment.centerRight,
                    child: Text("view history", style: TextStyle(color: ColorPalette.blue, fontSize: 12), textAlign: TextAlign.end,)),
                 )
              ),
          ),
      ]),
      ),
    );
  }
}