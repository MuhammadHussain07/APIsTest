import 'package:apis/modelclass/postmodel.dart';
import 'package:apis/repository/postresponse.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:http/http.dart';

class Postresponse extends StatefulWidget {
  const Postresponse({super.key});

  @override
  State<Postresponse> createState() => _PostresponseState();
}

class _PostresponseState extends State<Postresponse> {
  getdata2() async {
    // list2 =
    var list = postdata();
    print(list);

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
        child: Column(children: [
          Container(
            height: 500,
            width: 500,
            color: Colors.red,
            // child: ListView.builder(
            //     itemCount: list2<postdata>.length,
            //     itemBuilder: ((context, index) =>
            //         Text("${list[index]!.userId}"))),
          )
        ]),
      ),
    );
  }
}
