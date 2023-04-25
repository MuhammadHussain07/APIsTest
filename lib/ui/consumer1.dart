import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

import '../providers/provider1.dart';

class Consumer1 extends StatefulWidget {
  const Consumer1({super.key});

  @override
  State<Consumer1> createState() => _Consumer1State();
}

class _Consumer1State extends State<Consumer1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('${context.watch<Providername>().counter}'),
        SizedBox(
          height: 200,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
                onTap: () { 
                  context.read<Providername>().increment();
                },
                child: Text('Increment')),
            InkWell(
                onTap: () {
                  context.read<Providername>().decrement();
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
              context.read<Providername>().reset();
            },
            child: Text('Reset Button'))
      ],
    ));
  }
}
