import 'dart:html';

import 'package:apis/providers/provider1.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Consumername extends StatefulWidget {
  const Consumername({super.key});

  @override
  State<Consumername> createState() => _ConsumernameState();
}

class _ConsumernameState extends State<Consumername> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Consumer<Providername>(builder: (context, pro, child) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('${pro.counter}'),
          SizedBox(
            height: 200,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                  onTap: () {
                    pro.increment();
                  },
                  child: Text('Increment')),
              InkWell(
                  onTap: () {
                    pro.decrement();
                  },
                  child: Text('Decrement')),
            ],
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  backgroundColor: Colors.pink),
              onPressed: () {
                pro.reset();
              },
              child: Text('Reset Button'))
        ],
      );
    }));
    //);
  }
}
