import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/editar_citas/editar_citas_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/menu_asistente/menu_asistente_widget.dart';
import '/solicitud_citas/solicitud_citas_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditarDatosCitPacientModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.
  final formKey = GlobalKey<FormState>();
  final unfocusNode = FocusNode();

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  String? _textControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'juhwvh7g' /* Ingresa el motivo de cambio */,
      );
    }

    return null;
  }

  // State field(s) for EstudioDropDown widget.
  String? estudioDropDownValue;
  FormFieldController<String>? estudioDropDownValueController;
  // State field(s) for EstadoDropDown widget.
  String? estadoDropDownValue;
  FormFieldController<String>? estadoDropDownValueController;
  // State field(s) for LugarDropDown widget.
  String? lugarDropDownValue;
  FormFieldController<String>? lugarDropDownValueController;
  DateTime? datePicked1;
  DateTime? datePicked2;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    textControllerValidator = _textControllerValidator;
  }

  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }

/// Action blocks are added here.

/// Additional helper methods are added here.
}
