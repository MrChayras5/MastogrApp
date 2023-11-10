import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

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
import 'package:flutter/material.dart';


class RegistrateModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();



  // State field(s) for FullNameTextField widget.
  TextEditingController? fullNameTextFieldController;
  String? Function(BuildContext, String?)? fullNameTextFieldControllerValidator;

  String? _fullNameTextFieldControllerValidator(BuildContext context,
      String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'a49fgj42' /* Ingresa tu nombre */,
      );
    }
    // Verificar si el nombre contiene caracteres especiales o números
    RegExp regex = RegExp(r'[!@#$%^&*(),.?":{}|<>0-9]');
    if (regex.hasMatch(val)) {
      return 'Nombre inválido';
    }

    return null;
  }

  // State field(s) for EmailTextField widget.
  TextEditingController? emailTextFieldController;
  String? Function(BuildContext, String?)? emailTextFieldControllerValidator;


  String? _emailTextFieldControllerValidator(BuildContext context,
      String? val)  {
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

    // Verificar si el correo ya está registrado


    return null;
  }

  // State field(s) for PasswordTextField widget.
  TextEditingController? passwordTextFieldController;
  late bool passwordTextFieldVisibility;
  String? Function(BuildContext, String?)? passwordTextFieldControllerValidator;

  String? _passwordTextFieldControllerValidator(BuildContext context,
      String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'mkf22nrd' /* Ingresar Contraseña */,
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
  String? Function(BuildContext, String?)? confirmPasswordTextFieldControllerValidator;

  String? _confirmPasswordTextFieldControllerValidator(BuildContext context, String? val){
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'confirmkf22nrd' /* 'Ingresar la confirmación de la contraseña'*/,
      );
    }
    if (passwordTextFieldController?.text != val) {

        return 'Las contraseñas no coinciden' /* 'Las contraseñas no coinciden' */;

    }
  }


  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    fullNameTextFieldControllerValidator = _fullNameTextFieldControllerValidator;
    emailTextFieldControllerValidator = _emailTextFieldControllerValidator;
    passwordTextFieldVisibility = false;
    passwordTextFieldControllerValidator = _passwordTextFieldControllerValidator;
    confirmPasswordTextFieldVisibility = false;
    confirmPasswordTextFieldControllerValidator = _confirmPasswordTextFieldControllerValidator;
  }

  void dispose() {
    fullNameTextFieldController?.dispose();
    emailTextFieldController?.dispose();
    passwordTextFieldController?.dispose();
    confirmPasswordTextFieldController?.dispose();
  }

  /// Additional helper methods are added here.

}
