import '/componentes_proyecto/confirmar_cambio_contrasena/confirmar_cambio_contrasena_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'cambiar_contrasena_widget.dart' show CambiarContrasenaWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CambiarContrasenaModel extends FlutterFlowModel<CambiarContrasenaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for antiguaContrasena widget.
  FocusNode? antiguaContrasenaFocusNode;
  TextEditingController? antiguaContrasenaController;
  late bool antiguaContrasenaVisibility;
  String? Function(BuildContext, String?)? antiguaContrasenaControllerValidator;
  // State field(s) for nuevaContrasena widget.
  FocusNode? nuevaContrasenaFocusNode;
  TextEditingController? nuevaContrasenaController;
  late bool nuevaContrasenaVisibility;
  String? Function(BuildContext, String?)? nuevaContrasenaControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    antiguaContrasenaVisibility = false;
    nuevaContrasenaVisibility = false;
  }

  void dispose() {
    unfocusNode.dispose();
    antiguaContrasenaFocusNode?.dispose();
    antiguaContrasenaController?.dispose();

    nuevaContrasenaFocusNode?.dispose();
    nuevaContrasenaController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
