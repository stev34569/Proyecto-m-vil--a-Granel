// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:firebase_auth/firebase_auth.dart';

import 'package:firebase_core/firebase_core.dart';

Future<String> crearUsuario(
  String correo,
  String contrasena,
  String randomDocGen,
  String nombre,
  String telefono,
  int cedula,
  bool empleado,
) async {
  String mensaje = "Usuario creado";
  DateTime crearUsuario_date = DateTime.now();
  FirebaseApp app = await Firebase.initializeApp(
      name: randomDocGen, options: Firebase.app().options);
  try {
    UserCredential userCredential = await FirebaseAuth.instanceFor(app: app)
        .createUserWithEmailAndPassword(email: correo, password: contrasena);

    String? uid = userCredential.user?.uid;

    if (uid != null) {
      final CollectionReference<Map<String, dynamic>> user =
          FirebaseFirestore.instance.collection('users');

      user.doc(uid).set(<String, dynamic>{
        'uid': uid,
        'email': correo,
        'created_time': crearUsuario_date,
        'display_name': nombre,
        'phone_number': telefono,
        'cedula': cedula,
        'empleado': empleado,
      });

      return mensaje;
    } else {
      return "Error al crear usuario";
    }
  } on FirebaseAuthException catch (e) {
    return e.code;
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the button on the right!
