import 'package:app035numbersapi/model/Numbers.dart';
import 'package:flutter/material.dart';

class NumberPage extends StatefulWidget {
  static const String id = "iuhcgngweqwongxqwecwefiuergfnwemqwhefe";
  final Numbers number2;

  const NumberPage({
    required this.number2,
    Key? key,
  }) : super(key: key);

  @override
  State<NumberPage> createState() => _NumberPageState();
}

class _NumberPageState extends State<NumberPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Number database"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.only(left: 15, right: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                "Text : ${widget.number2.text}\n"
                "Year : ${widget.number2.year}\n"
                "Number : ${widget.number2.number}\n"
                "Found : ${widget.number2.found}\n"
                "Type : ${widget.number2.type}\n",
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
