import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'editar_producto_widget.dart' show EditarProductoWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditarProductoModel extends FlutterFlowModel<EditarProductoWidget> {
  ///  State fields for stateful widgets in this component.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for txtNombre widget.
  FocusNode? txtNombreFocusNode;
  TextEditingController? txtNombreController;
  String? Function(BuildContext, String?)? txtNombreControllerValidator;
  // State field(s) for txtCantidad widget.
  FocusNode? txtCantidadFocusNode;
  TextEditingController? txtCantidadController;
  String? Function(BuildContext, String?)? txtCantidadControllerValidator;
  // State field(s) for txtPrecio widget.
  FocusNode? txtPrecioFocusNode;
  TextEditingController? txtPrecioController;
  String? Function(BuildContext, String?)? txtPrecioControllerValidator;
  // State field(s) for txtPeso widget.
  FocusNode? txtPesoFocusNode;
  TextEditingController? txtPesoController;
  String? Function(BuildContext, String?)? txtPesoControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    txtNombreFocusNode?.dispose();
    txtNombreController?.dispose();

    txtCantidadFocusNode?.dispose();
    txtCantidadController?.dispose();

    txtPrecioFocusNode?.dispose();
    txtPrecioController?.dispose();

    txtPesoFocusNode?.dispose();
    txtPesoController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
