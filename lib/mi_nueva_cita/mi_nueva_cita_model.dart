import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/menu_paciente/menu_paciente_widget.dart';
import '/mis_citas/mis_citas_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MiNuevaCitaModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for NombreTextField widget.
  TextEditingController? nombreTextFieldController;
  String? Function(BuildContext, String?)? nombreTextFieldControllerValidator;
  // State field(s) for TelefonoTextField widget.
  TextEditingController? telefonoTextFieldController;
  String? Function(BuildContext, String?)? telefonoTextFieldControllerValidator;
  String? _telefonoTextFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'cksi1tjh' /* Ingrese su teléfono */,
      );
    }

    if (val.length < 10) {
      return FFLocalizations.of(context).getText(
        '6eq8c87o' /* Teléfono no valido min. de 10 ... */,
      );
    }
    if (val.length > 10) {
      return FFLocalizations.of(context).getText(
        '1fo0krgj' /* Teléfono no valido max. de 10 ... */,
      );
    }

    return null;
  }

  // State field(s) for CurpNssTextField widget.
  TextEditingController? curpNssTextFieldController;
  String? Function(BuildContext, String?)? curpNssTextFieldControllerValidator;
  String? _curpNssTextFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'im4kdkqk' /* Ingrese su CURP */,
      );
    }

    if (val.length < 18) {
      return FFLocalizations.of(context).getText(
        'n6uue8we' /* CURP minimo de 18 dígitos */,
      );
    }
    if (val.length > 18) {
      return FFLocalizations.of(context).getText(
        'gug9h75n' /* CURP maximo de 18 dígitos */,
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
    telefonoTextFieldControllerValidator =
        _telefonoTextFieldControllerValidator;
    curpNssTextFieldControllerValidator = _curpNssTextFieldControllerValidator;
  }

  void dispose() {
    nombreTextFieldController?.dispose();
    telefonoTextFieldController?.dispose();
    curpNssTextFieldController?.dispose();
  }

  /// Additional helper methods are added here.

}
