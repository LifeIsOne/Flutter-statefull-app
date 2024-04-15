import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int num = 3;

  @override
  Widget build(BuildContext context) {
    print("나 그려졌음");
    return Container(
      color: Colors.yellow,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text("${num}"),
            TextButton(onPressed: () {
              num++;
              print("num : ${num}");
              setState(() {});  // rebuild
            }, child: Text("증가")),
          ],
        ),
      ),
    );
  }
}

class HeaderPage extends StatelessWidget {
  HeaderPage();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Align(
        child: Text(
          "1",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 100,
              decoration: TextDecoration.none),
        ),
      ),
    );
  }
}

class BottomPage extends StatelessWidget {
  BottomPage();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Align(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
          onPressed: () {
            print("버튼 클릭됨");
          },
          child: Text(
            "증가",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 100,
            ),
          ),
        ),
      ),
    );
  }
}