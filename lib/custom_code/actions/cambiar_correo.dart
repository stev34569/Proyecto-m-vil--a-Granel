// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:firebase_auth/firebase_auth.dart';

Future<bool> cambiarCorreo(
  BuildContext context,
  String currentPassword,
  String newEmail,
) async {
  bool success = false;
  var user = await FirebaseAuth.instance.currentUser!;
  final cred = await EmailAuthProvider.credential(
      email: user.email!, password: currentPassword);
  await user.reauthenticateWithCredential(cred).then((value) async {
    await user.updateEmail(newEmail).then((_) {
      success = true;
    }).catchError((error) {
      print(error);
    });
  }).catchError((err) {
    print(err);
  });

  return success;
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the button on the right!
