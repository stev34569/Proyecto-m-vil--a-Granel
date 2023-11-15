import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/random_data_util.dart' as random_data;
import 'registrar_empleado_widget.dart' show RegistrarEmpleadoWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RegistrarEmpleadoModel extends FlutterFlowModel<RegistrarEmpleadoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for registrarNombre widget.
  FocusNode? registrarNombreFocusNode;
  TextEditingController? registrarNombreController;
  String? Function(BuildContext, String?)? registrarNombreControllerValidator;
  String? _registrarNombreControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'El nombre completo es requerido';
    }

    if (val.length < 10) {
      return 'Se requiere un mínimo de 10 caracteres';
    }
    if (val.length > 40) {
      return 'Has alcanzado el máximo de caracteres';
    }

    return null;
  }

  // State field(s) for registrarNumero widget.
  FocusNode? registrarNumeroFocusNode;
  TextEditingController? registrarNumeroController;
  String? Function(BuildContext, String?)? registrarNumeroControllerValidator;
  String? _registrarNumeroControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'El número de telefono es requerido';
    }

    if (val.length < 8) {
      return 'Ingrese como mínimo 8 dígitos';
    }
    if (val.length > 9) {
      return 'Has alcanzado el máximo de digitos';
    }

    return null;
  }

  // State field(s) for registrarCedula widget.
  FocusNode? registrarCedulaFocusNode;
  TextEditingController? registrarCedulaController;
  String? Function(BuildContext, String?)? registrarCedulaControllerValidator;
  String? _registrarCedulaControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'La cédula es requerida';
    }

    if (val.length < 15) {
      return 'Debe tener almenos 15 digitos';
    }
    if (val.length > 60) {
      return 'Has alcanzado el máximo de digitos';
    }

    return null;
  }

  // State field(s) for registrarCorreo widget.
  FocusNode? registrarCorreoFocusNode;
  TextEditingController? registrarCorreoController;
  String? Function(BuildContext, String?)? registrarCorreoControllerValidator;
  String? _registrarCorreoControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'El correo es requerido';
    }

    if (val.length < 15) {
      return 'Debe tener almenos 15 caracteres';
    }
    if (val.length > 60) {
      return 'Has alcanzado el máximo de caracteres';
    }

    return null;
  }

  // State field(s) for registrarCotrasena widget.
  FocusNode? registrarCotrasenaFocusNode;
  TextEditingController? registrarCotrasenaController;
  late bool registrarCotrasenaVisibility;
  String? Function(BuildContext, String?)?
      registrarCotrasenaControllerValidator;
  String? _registrarCotrasenaControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'La contraseña es requerida';
    }

    if (val.length < 6) {
      return 'Se requiere un mínimo de 6 caracteres';
    }
    if (val.length > 60) {
      return 'Has alcanzado el máximo de caracteres';
    }

    return null;
  }

  // State field(s) for checkEmpleado widget.
  bool? checkEmpleadoValue;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    registrarNombreControllerValidator = _registrarNombreControllerValidator;
    registrarNumeroControllerValidator = _registrarNumeroControllerValidator;
    registrarCedulaControllerValidator = _registrarCedulaControllerValidator;
    registrarCorreoControllerValidator = _registrarCorreoControllerValidator;
    registrarCotrasenaVisibility = false;
    registrarCotrasenaControllerValidator =
        _registrarCotrasenaControllerValidator;
  }

  void dispose() {
    unfocusNode.dispose();
    registrarNombreFocusNode?.dispose();
    registrarNombreController?.dispose();

    registrarNumeroFocusNode?.dispose();
    registrarNumeroController?.dispose();

    registrarCedulaFocusNode?.dispose();
    registrarCedulaController?.dispose();

    registrarCorreoFocusNode?.dispose();
    registrarCorreoController?.dispose();

    registrarCotrasenaFocusNode?.dispose();
    registrarCotrasenaController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
