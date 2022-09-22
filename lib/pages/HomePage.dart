import 'package:app035numbersapi/model/Number%20One.dart';
import 'package:app035numbersapi/model/Numbers.dart';
import 'package:app035numbersapi/pages/NumberPage.dart';
import 'package:app035numbersapi/services/http_service.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const String id = "homepage";

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List item = [];
  String? data1;

  @override
  void initState() {
    super.initState();
    _apiNumbers();
  }

  void _apiNumbers() {
    Network.GET(Network.Api_data, Network.paramsEmpty()).then((response) => {
          print(" diyorbekdan ==>> $response  <<==  keldi "),
          _showResponse(response!),
        });
  }

  void _showResponse(String reponse) {
    Numbers num = Network.parseNumber(reponse);
    setState(() {
      item.add(num);
      print("ITEMS >>>>>> ++++++++++ ${item[0]} +++++++++++ <<<<<<<<<<<<< ");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            Text("Numbers data"),
            SizedBox(
              height: 20,
            ),
            TextButton(
                onPressed: () {
                  setState(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => NumberPage(number2: item[0])));
                  });
                  /* Navigator.push (
    context,
    MaterialPageRoute (
      builder: (BuildContext context) => const MyPage(),
    ),
  ); */
                },
                child: const Text(
                  "Enter",
                  style: TextStyle(fontSize: 25),
                ))
          ],
        ),
      ),
    );
  }

/* Widget _showDataBase(Numbers num) {
    return Container(
      height: double.infinity,
      width: 400,
      child: Column(
        children: [
          Text("${num.text}",style: TextStyle(fontSize: 18,color: Colors.black),),
          Text("${num.type.toString()}"),
          Text("${num.year.toString()}"),
          Text("${num.number.toString()}"),
          Text("${num.found.toString()}"),
        ],
      ),
    );
  } */
}
