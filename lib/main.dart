import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:proyecto_fast_reservation/UI/app.dart';
import 'package:proyecto_fast_reservation/domain/controller/controluser.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  Get.put(ControlAuthFirebase());
  runApp(const MyApp());
}
