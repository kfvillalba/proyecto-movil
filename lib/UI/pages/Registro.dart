import 'package:flutter/material.dart';
import 'package:proyecto_fast_reservation/UI/CustomPainter/painterRegistrar.dart';
// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

class Registro extends StatelessWidget {
  const Registro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/fondo5.png"),
          fit: BoxFit.cover,
        )),
        child: CustomPaint(
          painter: RegistroPainter(),
          child: Column(children: [
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.25,
                  left: MediaQuery.of(context).size.width * 0.50),
              child: Row(
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    child: Text("SIGN IN",
                        style: TextStyle(color: Colors.grey, fontSize: 10)),
                  ),
                  Text(
                    "/",
                    style: TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                  Text(
                    "SIGN UP ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
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
              height: 10,
            ),
            SizedBox(
              width: 370,
              child: TextField(
                decoration: InputDecoration(
                    labelText: 'Nombre y Apellido',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40))),
              ),
            ),
            SizedBox(
              width: 20,
              height: 10,
            ),
            SizedBox(
              width: 370,
              child: TextField(
                decoration: InputDecoration(
                    labelText: 'Telefono',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40))),
              ),
            ),
            SizedBox(
              width: 20,
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.only(right: 20, left: 20),
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
                    child: Text("Registrarse",
                        style: TextStyle(color: Colors.white, fontSize: 15)),
                  )),
            ),
          ]),
        ),
      ),
    );
  }
}
