import 'package:flutter/material.dart';
import 'package:proyecto_fast_reservation/UI/CustomPainter/painterLogin.dart';
// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color(0xFF00BBFF),
          Color(0xFF80DDFF),
          Color(0xFF00BBFF),
          //Color(0xFF005E80),
        ])),
        child: CustomPaint(
          painter: loginPainter(),
          child: Column(children: [
            Padding(
              padding: EdgeInsets.only(top: 180, left: 50),
              child: Row(
                children: [
                  Text(
                    "SIGN IN ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "/",
                    style: TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/registro');
                    },
                    child: Text("SIGN UP",
                        style: TextStyle(color: Colors.grey, fontSize: 10)),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
              ),
              child: Text("Fast Reservation",
                  style: TextStyle(
                      color: Color.fromARGB(255, 102, 105, 110), fontSize: 30)),
            ),
            SizedBox(
              width: 20,
              height: 10,
            ),
            SizedBox(
              width: 370,
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Nombre de Usuario',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40)),
                ),
              ),
            ),
            SizedBox(
              width: 20,
              height: 10,
            ),
            SizedBox(
              width: 370,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    labelText: 'Contraseña',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40))),
              ),
            ),
            SizedBox(
              width: 20,
              height: 50,
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Container(
                  width: 370,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      gradient: LinearGradient(colors: [
                        Color(0xFF00BBFF),
                        Color(0xFF80DDFF),
                        Color(0xFF00BBFF),
                        //Color(0xFF005E80),
                      ])),
                  child: TextButton(
                    onPressed: () {},
                    child: Text("Ingresar",
                        style: TextStyle(color: Colors.white, fontSize: 15)),
                  )),
            ),
          ]),
        ),
      ),
    );
  }
}
