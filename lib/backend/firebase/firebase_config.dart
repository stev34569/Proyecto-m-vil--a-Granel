import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDqF-Zur1mO4B6PuBdFLVq6eANBJE7F_qE",
            authDomain: "proyectoagranel.firebaseapp.com",
            projectId: "proyectoagranel",
            storageBucket: "proyectoagranel.appspot.com",
            messagingSenderId: "997830302695",
            appId: "1:997830302695:web:bd6056c9872085f983fb42",
            measurementId: "G-XMVFDBZDQB"));
  } else {
    await Firebase.initializeApp();
  }
}
