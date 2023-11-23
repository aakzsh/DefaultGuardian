import 'dart:convert';
import "dart:developer";
import 'package:http/http.dart' as http;

class TxnScore {
  Future<int> calculateScore(data) async {
    final res = await http.get(Uri.parse(
        "https://defaultguardian.onrender.com/calculate/${data["sender"]}/${data["receiver"]}/${data["amount"]}"));

    if (res.statusCode == 200) {
      final data = jsonDecode(res.body.toString());
      final score =
          (double.parse(data["overall_score"].toString()) * 100).round();
      log(data['overall_score'].toString());
      return score;
      // ;
    } else {
      // Print an error message
      log('Error: ${res.statusCode}');
    }

    return 80;
  }
}
