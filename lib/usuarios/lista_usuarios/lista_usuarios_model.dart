import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/componentes_proyecto/actualizar_usuario/actualizar_usuario_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';

class ListaUsuariosModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for txtBusqueda widget.
  TextEditingController? txtBusquedaController;
  String? Function(BuildContext, String?)? txtBusquedaControllerValidator;
  List<UsersRecord> simpleSearchResults = [];

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    txtBusquedaController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
