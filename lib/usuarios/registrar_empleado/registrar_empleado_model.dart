import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RegistrarEmpleadoModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for registrarCorreo widget.
  TextEditingController? registrarCorreoController;
  String? Function(BuildContext, String?)? registrarCorreoControllerValidator;
  // State field(s) for registrarNombre widget.
  TextEditingController? registrarNombreController;
  String? Function(BuildContext, String?)? registrarNombreControllerValidator;
  // State field(s) for registrarNumero widget.
  TextEditingController? registrarNumeroController;
  String? Function(BuildContext, String?)? registrarNumeroControllerValidator;
  // State field(s) for registrarCedula widget.
  TextEditingController? registrarCedulaController;
  String? Function(BuildContext, String?)? registrarCedulaControllerValidator;
  // State field(s) for registrarCotrasena widget.
  TextEditingController? registrarCotrasenaController;
  late bool registrarCotrasenaVisibility;
  String? Function(BuildContext, String?)?
      registrarCotrasenaControllerValidator;
  // State field(s) for checkEmpleado widget.
  bool? checkEmpleadoValue;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    registrarCotrasenaVisibility = false;
  }

  void dispose() {
    unfocusNode.dispose();
    registrarCorreoController?.dispose();
    registrarNombreController?.dispose();
    registrarNumeroController?.dispose();
    registrarCedulaController?.dispose();
    registrarCotrasenaController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
