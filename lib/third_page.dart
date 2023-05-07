import 'package:flutter/material.dart';
import 'package:unlike10/second_page.dart';

class ThirdPage extends StatefulWidget {
  static const String id = "third_page";

  const ThirdPage({Key? key}) : super(key: key);

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Column"),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, SecondPage.id);
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Container(
        width: 400,
        color: Colors.red,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center
          children: [
          Container(
          height: 70,
          width: 120,
          color: Colors.black,
        ),
            Container(
              height: 80,
              width: 100,
              color: Colors.yellow,
            ),
            Container(
              height: 90,
              width: 100,
              color: Colors.purpleAccent,
            ),
        ],
      ),
    ),);
  }
}
