import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for emailAddress_Login widget.
  TextEditingController? emailAddressLoginController;
  String? Function(BuildContext, String?)? emailAddressLoginControllerValidator;
  String? _emailAddressLoginControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Su correo es requerido';
    }

    if (val.length < 15) {
      return 'Se requiere un mínimo de 15 caracteres';
    }
    if (val.length > 45) {
      return 'Has alcanzado el máximo de caracteres';
    }

    return null;
  }

  // State field(s) for password_Login widget.
  TextEditingController? passwordLoginController;
  late bool passwordLoginVisibility;
  String? Function(BuildContext, String?)? passwordLoginControllerValidator;
  String? _passwordLoginControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Se requiere contraseña';
    }

    if (val.length < 6) {
      return 'Se requiere un minimo de 6 caracteres';
    }
    if (val.length > 60) {
      return 'Has alcanzado el máximo de caracteres';
    }

    return null;
  }

  // State field(s) for emailAddress widget.
  TextEditingController? emailAddressController;
  String? Function(BuildContext, String?)? emailAddressControllerValidator;
  String? _emailAddressControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Su correo es requerido';
    }

    if (val.length < 15) {
      return 'Debe de tener almenos 15 caracteres';
    }
    if (val.length > 60) {
      return 'Has alcanzado el máximo de caracteres';
    }

    return null;
  }

  // State field(s) for nombreCompleto widget.
  TextEditingController? nombreCompletoController;
  String? Function(BuildContext, String?)? nombreCompletoControllerValidator;
  String? _nombreCompletoControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Se requiere su nombre completo';
    }

    if (val.length < 10) {
      return 'Debe tener como mínimo 10 caracteres';
    }
    if (val.length > 40) {
      return 'Has superado el máximo de caracteres';
    }

    return null;
  }

  // State field(s) for numeroTelefonico widget.
  TextEditingController? numeroTelefonicoController;
  String? Function(BuildContext, String?)? numeroTelefonicoControllerValidator;
  String? _numeroTelefonicoControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Su número telefónico es requerido';
    }

    if (val.length < 8) {
      return 'Ingrese como mínimo 8 caracteres';
    }
    if (val.length > 9) {
      return 'Has superado el máximo de caracteres';
    }

    return null;
  }

  // State field(s) for cedula widget.
  TextEditingController? cedulaController;
  String? Function(BuildContext, String?)? cedulaControllerValidator;
  String? _cedulaControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Se requiere de su cédula';
    }

    if (val.length < 9) {
      return 'Se requieren almenos 9 dígitos';
    }
    if (val.length > 9) {
      return 'Has superado la cantidad máxima de caracteres';
    }

    return null;
  }

  // State field(s) for password widget.
  TextEditingController? passwordController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordControllerValidator;
  String? _passwordControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Se requiere ingresar contraseña';
    }

    if (val.length < 6) {
      return 'Se requiere un mínimo de 6 caracteres';
    }
    if (val.length > 16) {
      return 'Has alcanzado el máximo de caracteres';
    }

    return null;
  }

  // State field(s) for passwordConfirm widget.
  TextEditingController? passwordConfirmController;
  late bool passwordConfirmVisibility;
  String? Function(BuildContext, String?)? passwordConfirmControllerValidator;
  String? _passwordConfirmControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Confirme su contraseña';
    }

    if (val.length < 6) {
      return 'Se requiere un mínimo de 6 digitos';
    }
    if (val.length > 16) {
      return 'Has alcanzado el máximo de digitos';
    }

    return null;
  }

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    emailAddressLoginControllerValidator =
        _emailAddressLoginControllerValidator;
    passwordLoginVisibility = false;
    passwordLoginControllerValidator = _passwordLoginControllerValidator;
    emailAddressControllerValidator = _emailAddressControllerValidator;
    nombreCompletoControllerValidator = _nombreCompletoControllerValidator;
    numeroTelefonicoControllerValidator = _numeroTelefonicoControllerValidator;
    cedulaControllerValidator = _cedulaControllerValidator;
    passwordVisibility = false;
    passwordControllerValidator = _passwordControllerValidator;
    passwordConfirmVisibility = false;
    passwordConfirmControllerValidator = _passwordConfirmControllerValidator;
  }

  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    emailAddressLoginController?.dispose();
    passwordLoginController?.dispose();
    emailAddressController?.dispose();
    nombreCompletoController?.dispose();
    numeroTelefonicoController?.dispose();
    cedulaController?.dispose();
    passwordController?.dispose();
    passwordConfirmController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
