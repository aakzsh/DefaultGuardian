import 'package:http/http.dart' as http;

class TxnScore {
  Future<int> calculateScore() async {
    // const score = 90;
    // final res = await http.get(Uri.parse("http://127.0.0.1:5000/check"));
    // print(res);
    return 78;
  }

  Future<http.Response> getScorefromAPI() async {
    final response = await http.get(Uri.parse("http://127.0.0.1:5000"));

    if (response.statusCode == 200) {
      // The request was successful
      return response;
    } else {
      // The request failed
      throw Exception('Failed to load post');
    }
  }
}
