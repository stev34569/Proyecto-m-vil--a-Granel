import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

String? prueba(bool pDisponibilidad) {
  if (pDisponibilidad == true) {
    return "si";
  }
  return "Agotado";
}

String? generarIdChat(
  String idMia,
  String idDelOtro,
) {
  List<String> arrayOfIds = [idMia, idDelOtro];
  arrayOfIds.sort();
  return arrayOfIds[0] + "-" + arrayOfIds[1];
}
