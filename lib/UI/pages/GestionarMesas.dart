import 'package:flutter/material.dart';

class GestionarMesas extends StatelessWidget {
  const GestionarMesas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.exit_to_app),
          ),
        ],
        title: const Text("Gestionar Mesas"),
        backgroundColor: const Color(0xFF005E80),
      ),
    );
  }
}
