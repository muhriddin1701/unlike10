import 'package:flutter/material.dart';
import 'package:unlike10/second_page.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Container"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, SecondPage.id);
            },
            icon: const Icon(Icons.arrow_forward),
          ),
        ],
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height:118,
              width: 440,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.green),
              child: const Center(
                child: Text(
                  "Container",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 100,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              padding: const EdgeInsets.only(
                top: 40,
                bottom: 60,
                right: 10,
                left: 10,
              ),
              height: 280,
              width: 270,
              color: Colors.black,
              child: Center(
                child: Container(
                  color: Colors.yellow,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
