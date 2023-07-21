import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/componentes_proyecto/actualizar_usuario/actualizar_usuario_widget.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ListaUsuariosUnoModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for txtBuscador widget.
  final txtBuscadorKey = GlobalKey();
  TextEditingController? txtBuscadorController;
  String? txtBuscadorSelectedOption;
  String? Function(BuildContext, String?)? txtBuscadorControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {}

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
