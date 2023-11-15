import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/componentes_proyecto/actualizar_usuario/actualizar_usuario_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'lista_usuarios_copy_widget.dart' show ListaUsuariosCopyWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';

class ListaUsuariosCopyModel extends FlutterFlowModel<ListaUsuariosCopyWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for txtBusqueda widget.
  FocusNode? txtBusquedaFocusNode;
  TextEditingController? txtBusquedaController;
  String? Function(BuildContext, String?)? txtBusquedaControllerValidator;
  List<UsersRecord> simpleSearchResults = [];

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    txtBusquedaFocusNode?.dispose();
    txtBusquedaController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
