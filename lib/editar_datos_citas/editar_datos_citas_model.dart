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

class EditarDatosCitasModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for LugarDropDown widget.
  String? lugarDropDownValue;
  FormFieldController<String>? lugarDropDownValueController;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // State field(s) for TextField widget.
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    textController?.dispose();
  }

  /// Additional helper methods are added here.

}
