import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: true, home: HomeActivity());
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.account_circle,
                color: Colors.green,
                size: 55,
              ),
              Text("Jhon Doe",
                  style: TextStyle(fontSize: 40, color: Colors.green)),
              Text("Flutter Batch 4",
                  style: TextStyle(fontSize: 30, color: Colors.blue))
            ],
          ),
        ),
        appBar: AppBar(
          title: Text("Profile"),
          titleSpacing: 90,
          centerTitle: true,
          toolbarHeight: 60,
          elevation: 10,//sdfgh
          toolbarOpacity: 1,
          backgroundColor: Colors.blue,//
        ));
  }
}
