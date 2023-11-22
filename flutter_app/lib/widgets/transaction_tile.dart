import 'package:flutter/material.dart';

class TransactionTile extends StatelessWidget {
  const TransactionTile({super.key, required this.data});
  final dynamic data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        height: 60,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Color.fromRGBO(28, 29, 29, 1),
        ),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 2, 0, 2),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data["txn_name"].toString().length > 25
                      ? data["txn_name"].toString().substring(0, 23) + "..."
                      : data["txn_name"].toString(),
                  style: const TextStyle(color: Colors.white),
                ),
                Text(
                  data["date"],
                  style: const TextStyle(color: Colors.white70, fontSize: 12),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: data["credit_amount"] > data["debit_amount"]
                ? Text(
                    "+${data["credit_amount"]}",
                    style: const TextStyle(color: Colors.greenAccent),
                  )
                : Text(
                    "-${data["debit_amount"]}",
                    style: const TextStyle(color: Colors.redAccent),
                  ),
          )
        ]),
      ),
    );
  }
}
