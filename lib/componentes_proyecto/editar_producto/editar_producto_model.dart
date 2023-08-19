import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditarProductoModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for txtNombre widget.
  TextEditingController? txtNombreController;
  String? Function(BuildContext, String?)? txtNombreControllerValidator;
  // State field(s) for txtCantidad widget.
  TextEditingController? txtCantidadController;
  String? Function(BuildContext, String?)? txtCantidadControllerValidator;
  // State field(s) for txtTelefonoUsuario widget.
  TextEditingController? txtTelefonoUsuarioController;
  String? Function(BuildContext, String?)?
      txtTelefonoUsuarioControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    txtNombreController?.dispose();
    txtCantidadController?.dispose();
    txtTelefonoUsuarioController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
