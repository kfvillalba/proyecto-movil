import 'package:flutter/material.dart';
import 'package:proyecto_fast_reservation/UI/pages/Login.dart';
import 'package:proyecto_fast_reservation/UI/pages/Registro.dart';
// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Fast Reservation",
      debugShowCheckedModeBanner: false,
      home: Login(),
      routes: {
        '/login': (context) => Login(),
        '/registro': (context) => Registro(),
      },
    );
  }
}
