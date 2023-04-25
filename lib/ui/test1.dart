import 'package:apis/modelclass/testing1.dart';
import 'package:apis/repository/testingreppo.dart';
import 'package:flutter/material.dart';

class Test1 extends StatefulWidget {
  const Test1({super.key});

  @override
  State<Test1> createState() => _Test1State();
}

class _Test1State extends State<Test1> {
  List<Results?> _list = [];
  Info? info;

  getdata() async {
    var data = await gettestingdata();
    _list = data!.results!;
    info = data.info;
    print(_list);
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    getdata();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Colors.pinkAccent,
      child: Column(
        children: [
          Container(
              height: 50,
              width: 300,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('${info!.count}'),
              )),
          Expanded(
            child: Container(
              height: 500,
              width: 400,
              color: Colors.blueGrey,
              child: ListView.builder(
                  itemCount: _list.length,
                  itemBuilder: (context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          height: 50,
                          width: 400,
                          color: Colors.amberAccent,
                          child: Center(
                              child: Text("${_list[index]!.episode![0]}"))),
                    );
                  }),
            ),
          ),
        ],
      ),
    ));
  }
}
