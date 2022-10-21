import 'package:flutter/material.dart';
// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

class GestionarMeseros extends StatelessWidget {
  const GestionarMeseros({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Gestionar Meseros"),
        backgroundColor: const Color(0xFF005E80),
      ),
      body: Container(
        alignment: Alignment.topCenter,
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          children: [
            Container(
              width: double.infinity,
              height: 150,
              margin:
                  EdgeInsets.only(top: 100, left: 100, right: 100, bottom: 50),
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(5),
              ),
              child: IconButton(
                  iconSize: 100,
                  color: Colors.white,
                  onPressed: () {},
                  icon: Icon(Icons.add_photo_alternate_outlined)),
            ),
            Container(
              margin: EdgeInsets.only(right: 20.0, left: 20.0),
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
            Container(
              margin: EdgeInsets.only(right: 20.0, left: 20.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Contraseña',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40)),
                ),
              ),
            ),
            SizedBox(
              width: 20,
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(right: 20.0, left: 20.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Identificacion del Mesero',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40)),
                ),
              ),
            ),
            SizedBox(
              width: 20,
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(right: 20.0, left: 20.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Nombres y Apellidos del Mesero',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40)),
                ),
              ),
            ),
            SizedBox(
              width: 20,
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(right: 20.0, left: 20.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Salario del Mesero',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40)),
                ),
              ),
            ),
            SizedBox(
              width: 20,
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  child: CircleAvatar(
                      backgroundColor: Color(0xFF005E80),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.add),
                        color: Colors.white,
                      )),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: CircleAvatar(
                      backgroundColor: Color(0xFF005E80),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.create_rounded),
                        color: Colors.white,
                      )),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: CircleAvatar(
                      backgroundColor: Color(0xFF005E80),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.search),
                        color: Colors.white,
                      )),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: CircleAvatar(
                      backgroundColor: Color(0xFF005E80),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.delete),
                        color: Colors.white,
                      )),
                )
              ],
            ),
            SizedBox(
              width: 20,
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
