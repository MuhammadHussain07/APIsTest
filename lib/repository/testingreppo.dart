import 'dart:convert';

import 'package:apis/modelclass/testing1.dart';
import "package:http/http.dart";
import "package:http/http.dart" as https;

// Future<void>
Future<Testing1?> gettestingdata() async {
  Testing1? hussain;
  final testingres =
      await https.get(Uri.parse('https://rickandmortyapi.com/api/character'));
  if (testingres.statusCode == 200) {
    hussain = Testing1.fromJson(json.decode(testingres.body));
  } else {}
  // print(hussain);
  return hussain;

  // if (testingres.statusCode == 200) {
  //   print(testingres.body);
  // } else {
  //   print(testingres.statusCode);
  // }
}

// class Testing {
//   Future<Testing1> gettestingdata() async {
//     final testingres =
//         await https.get(Uri.parse('https://rickandmortyapi.com/api/character'));

//     Testing1 testingdata = Testing1.fromJson(jsonDecode(testingres.body));
//     return testingdata;
//   }
// }
