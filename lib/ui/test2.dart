import 'package:apis/modelclass/testing2.dart';
import 'package:apis/repository/response2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Test2 extends StatefulWidget {
  const Test2({super.key});

  @override
  State<Test2> createState() => _Test2State();
}

class _Test2State extends State<Test2> {
  List<Testing2?> list2 = [];

  getdata2() async {
    // list2 =
    list2 = await getresponse();
    print(list2);
    // list2 = data2!.title as List;

    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getdata2();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.orangeAccent,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Container(
              height: 500,
              width: 500,
              color: Colors.red,
              child: ListView.builder(
                  itemCount: list2.length,
                  itemBuilder: ((context, index) =>
                      Text("${list2[index]!.userId}"))),
            )
            // ListView.builder(
            //     itemCount: list2.length,
            //     itemBuilder: ((context, index) => Text('${list2[index].id}'))),
          ],
        ),
      ),
    );
  }
}
