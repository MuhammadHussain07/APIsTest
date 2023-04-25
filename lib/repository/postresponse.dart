import 'dart:convert';
import 'dart:html';

import 'package:apis/modelclass/postmodel.dart';
import 'package:flutter/cupertino.dart';

import "package:http/http.dart" as https;

Future<Postmodel?> postdata() async {
  final testingres = await https
          .post(Uri.parse('https://rickandmortyapi.com/api/character')),
      body;
  {
    Title:
    'Testing';
  }
  if (testingres.statusCode == 200) {
    var hussain = Postmodel.fromJson(json.decode(testingres.body));
    print(hussain);
  } else {}
  // print(hussain);
  // return hussain;
}
