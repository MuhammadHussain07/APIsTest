import 'dart:convert';

import 'package:apis/modelclass/testing2.dart';
import "package:http/http.dart" as https;

Future<List<Testing2?>> getresponse() async {
  List<Testing2?> data = [];
  final response2 = await https
      .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/'));
  // var resp = Testing2.fromJson(json.decode(response2.body));
  if (response2.statusCode == 200) {
    data = List<Testing2>.from(json.decode(response2.body).map((x) {
      return Testing2.fromJson(x);
    }));
    // print(data);
    // Testing2.fromJson(json.decode(response2.body));
    // print(data2);
  } else {}
  return data;
// return data;
}
