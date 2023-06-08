import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/iniciar_sesion/iniciar_sesion_widget.dart';
import '/menu_paciente/menu_paciente_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RegistrateModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for FullNameTextField widget.
  TextEditingController? fullNameTextFieldController;
  String? Function(BuildContext, String?)? fullNameTextFieldControllerValidator;
  String? _fullNameTextFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'a49fgj42' /* Ingresa tu nombre */,
      );
    }

    return null;
  }

  // State field(s) for EmailTextField widget.
  TextEditingController? emailTextFieldController;
  String? Function(BuildContext, String?)? emailTextFieldControllerValidator;
  String? _emailTextFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'mpj5ofaj' /* Ingresa un correo */,
      );
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        '7du2kdkh' /* Correo invalido */,
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
        'mkf22nrd' /* Field is required */,
      );
    }

    if (val.length < 8) {
      return FFLocalizations.of(context).getText(
        'leoqa9zd' /* Minimo de 8 caracteres */,
      );
    }
    if (val.length > 20) {
      return FFLocalizations.of(context).getText(
        'yqt6qk9z' /* El maximo es de 20 caracteres */,
      );
    }

    return null;
  }

  // State field(s) for ConfirmPasswordTextField widget.
  TextEditingController? confirmPasswordTextFieldController;
  late bool confirmPasswordTextFieldVisibility;
  String? Function(BuildContext, String?)?
      confirmPasswordTextFieldControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    fullNameTextFieldControllerValidator =
        _fullNameTextFieldControllerValidator;
    emailTextFieldControllerValidator = _emailTextFieldControllerValidator;
    passwordTextFieldVisibility = false;
    passwordTextFieldControllerValidator =
        _passwordTextFieldControllerValidator;
    confirmPasswordTextFieldVisibility = false;
  }

  void dispose() {
    fullNameTextFieldController?.dispose();
    emailTextFieldController?.dispose();
    passwordTextFieldController?.dispose();
    confirmPasswordTextFieldController?.dispose();
  }

  /// Additional helper methods are added here.

}
