import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/menu_asistente/menu_asistente_widget.dart';
import '/menu_paciente/menu_paciente_widget.dart';
import '/password1/password1_widget.dart';
import '/registrate/registrate_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '/auth/firebase_auth/auth_util.dart'; // Asegúrate de que esta sea la ruta correcta al archivo con signInWithEmailAndPassword.

//

class IniciarSesionModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.




  final formKey = GlobalKey<FormState>();
  // State field(s) for EmailTextField widget.
  TextEditingController? emailTextFieldController;
  String? Function(BuildContext, String?)? emailTextFieldControllerValidator;
  String? _emailTextFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'n5ghu8wp' /* Ingrese su correo */,
      );
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'nrad91n6' /* Correo incorrecto */,
      );
    }

    return null;
  }

  // State field(s) for PasswordTextField widget.
  TextEditingController? passwordTextFieldController;
  late bool passwordTextFieldVisibility;
  String? Function(BuildContext, String?)? passwordTextFieldControllerValidator;
  String? _passwordTextFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'qf780ef2' /* Ingrese su contraseña */,
      );
    }

    if (val.length < 8) {
      return FFLocalizations.of(context).getText(
        'go757j05' /* Contraseña incorrecta. */,
      );
    }
    if (val.length > 20) {
      return FFLocalizations.of(context).getText(
        'zpoi82pg' /* Contraseña incorrecta. */,
      );
    }

    return null;
  }

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    emailTextFieldControllerValidator = _emailTextFieldControllerValidator;
    passwordTextFieldVisibility = false;
    passwordTextFieldControllerValidator =
        _passwordTextFieldControllerValidator;
  }

  void dispose() {
    emailTextFieldController?.dispose();
    passwordTextFieldController?.dispose();
  }

  /// Additional helper methods are added here.

}
