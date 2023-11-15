import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'editar_categoria_widget.dart' show EditarCategoriaWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditarCategoriaModel extends FlutterFlowModel<EditarCategoriaWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for txtCategoria widget.
  FocusNode? txtCategoriaFocusNode;
  TextEditingController? txtCategoriaController;
  String? Function(BuildContext, String?)? txtCategoriaControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    txtCategoriaFocusNode?.dispose();
    txtCategoriaController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
