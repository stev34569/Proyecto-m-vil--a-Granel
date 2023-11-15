import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'actualizar_usuario_widget.dart' show ActualizarUsuarioWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ActualizarUsuarioModel extends FlutterFlowModel<ActualizarUsuarioWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for txtNombreUsuario widget.
  FocusNode? txtNombreUsuarioFocusNode;
  TextEditingController? txtNombreUsuarioController;
  String? Function(BuildContext, String?)? txtNombreUsuarioControllerValidator;
  // State field(s) for txtTelefonoUsuario widget.
  FocusNode? txtTelefonoUsuarioFocusNode;
  TextEditingController? txtTelefonoUsuarioController;
  String? Function(BuildContext, String?)?
      txtTelefonoUsuarioControllerValidator;
  // State field(s) for txtCedula widget.
  FocusNode? txtCedulaFocusNode;
  TextEditingController? txtCedulaController;
  String? Function(BuildContext, String?)? txtCedulaControllerValidator;
  // State field(s) for CheckboxA widget.
  bool? checkboxAValue;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    txtNombreUsuarioFocusNode?.dispose();
    txtNombreUsuarioController?.dispose();

    txtTelefonoUsuarioFocusNode?.dispose();
    txtTelefonoUsuarioController?.dispose();

    txtCedulaFocusNode?.dispose();
    txtCedulaController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
