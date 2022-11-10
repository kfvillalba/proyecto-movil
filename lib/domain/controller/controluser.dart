import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class ControlAuthFirebase extends GetxController {
  final FirebaseAuth authf = FirebaseAuth.instance;
  final Rx<dynamic> _uid = "".obs;
  final Rx<dynamic> _usuario = "Sin Registro".obs;
  final Rx<dynamic> _mensajes = "".obs;

  String get emailf => _usuario.value;
  String get uid => _uid.value;

  Future<void> registrarEmail(String user, String password) async {
    try {
      UserCredential usuario = await authf.createUserWithEmailAndPassword(
          email: user, password: password);

      _uid.value = usuario.user!.uid;
      _usuario.value = usuario.user!.email;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        return Future.error('La contraseña es muy debil');
      } else if (e.code == 'email-already-in-use') {
        return Future.error('El correo ya esta registrado');
      }
    }
  }

  Future<void> ingresarEmail(String user, String password) async {
    try {
      UserCredential usuario = await authf.signInWithEmailAndPassword(
          email: user, password: password);

      _uid.value = usuario.user!.uid;
      _usuario.value = usuario.user!.email;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return Future.error('Usuario no Existe');
      } else if (e.code == 'wrong-password') {
        return Future.error('Contraseña Incorrecta');
      }
    }
  }
}
