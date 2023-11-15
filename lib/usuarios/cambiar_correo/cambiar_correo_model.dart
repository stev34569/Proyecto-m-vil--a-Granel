import '/componentes_proyecto/confirmar_cambio_correo/confirmar_cambio_correo_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'cambiar_correo_widget.dart' show CambiarCorreoWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CambiarCorreoModel extends FlutterFlowModel<CambiarCorreoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for nuevoCorreo widget.
  FocusNode? nuevoCorreoFocusNode;
  TextEditingController? nuevoCorreoController;
  String? Function(BuildContext, String?)? nuevoCorreoControllerValidator;
  // State field(s) for contrasena widget.
  FocusNode? contrasenaFocusNode;
  TextEditingController? contrasenaController;
  late bool contrasenaVisibility;
  String? Function(BuildContext, String?)? contrasenaControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    contrasenaVisibility = false;
  }

  void dispose() {
    unfocusNode.dispose();
    nuevoCorreoFocusNode?.dispose();
    nuevoCorreoController?.dispose();

    contrasenaFocusNode?.dispose();
    contrasenaController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
