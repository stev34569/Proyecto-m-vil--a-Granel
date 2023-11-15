import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/mensajes/chat_item/chat_item_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'actividad_usuarios_widget.dart' show ActividadUsuariosWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ActividadUsuariosModel extends FlutterFlowModel<ActividadUsuariosWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Column widget.
  ScrollController? columnController;
  // State field(s) for ListView widget.
  ScrollController? listViewController;
  // Models for chatItem dynamic component.
  late FlutterFlowDynamicModels<ChatItemModel> chatItemModels;
  // State field(s) for txtMensaje widget.
  FocusNode? txtMensajeFocusNode;
  TextEditingController? txtMensajeController;
  String? Function(BuildContext, String?)? txtMensajeControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Icon widget.
  ChatRoomRecord? enter;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    columnController = ScrollController();
    listViewController = ScrollController();
    chatItemModels = FlutterFlowDynamicModels(() => ChatItemModel());
  }

  void dispose() {
    unfocusNode.dispose();
    columnController?.dispose();
    listViewController?.dispose();
    chatItemModels.dispose();
    txtMensajeFocusNode?.dispose();
    txtMensajeController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
