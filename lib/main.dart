import 'package:flutter/material.dart';
import 'controller/GetApiDataController.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  GetApiDataController controll = GetApiDataController();

  String data = "";

  updateData() {
    setState(() {
      controll.ambilData();
      data = controll.nama;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: ListView(
            children: [
              Text(
                "Data : ${data}",
                style: TextStyle(fontSize: 30),
              ),
              Text(
                "Data C: ${controll.nama}",
                style: TextStyle(fontSize: 30),
              ),
              TextButton(
                onPressed: () {
                  updateData();
                },
                child: Text("Ambil Data"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
