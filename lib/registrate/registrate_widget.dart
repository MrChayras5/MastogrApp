import 'package:firebase_auth/firebase_auth.dart';

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
import 'registrate_model.dart';
export 'registrate_model.dart';
import 'package:firebase_auth/firebase_auth.dart';


class RegistrateWidget extends StatefulWidget {
  const RegistrateWidget({Key? key}) : super(key: key);

  @override
  _RegistrateWidgetState createState() => _RegistrateWidgetState();
}

class _RegistrateWidgetState extends State<RegistrateWidget> {
  late RegistrateModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RegistrateModel());

    _model.fullNameTextFieldController ??= TextEditingController();
    _model.emailTextFieldController ??= TextEditingController();
    _model.passwordTextFieldController ??= TextEditingController();
    _model.confirmPasswordTextFieldController ??= TextEditingController();
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
        resizeToAvoidBottomInset: false, // Evitará que la pantalla se redimensione cuando el teclado se muestra
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBtnText,
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 1.0,
                    height: MediaQuery.of(context).size.height * 0.806,
                    decoration: BoxDecoration(
                      color: Color(0xFFECA090),
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: Image.asset(
                          'assets/images/bg_login.png',
                        ).image,
                      ),
                      shape: BoxShape.rectangle,
                      border: Border.all(
                        color: Color(0xFFECA090),
                      ),
                    ),
                    child: Container(
                      width: 100.0,
                      height: 100.0,
                      decoration: BoxDecoration(
                        color: Color(0xFFEC7484),
                      ),
                      child: Stack(
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0.05, -0.90),//-0.86
                            child: Text(
                              FFLocalizations.of(context).getText(
                                '4z9pyvtv' /* Registrate: */,
                              ),
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Lexend Deca',
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.w300,
                                  ),
                            ),
                          ),
                          Form(
                            key: _model.formKey,
                            autovalidateMode: AutovalidateMode.disabled,
                            child: Align(
                              alignment: AlignmentDirectional(0.11, 1.3),//1.03
                              child: Container(
                                width: 319.8,
                                height: 646.0,//596
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  shape: BoxShape.rectangle,
                                ),
                                alignment: AlignmentDirectional(
                                    0.3999999999999999, 0.6499999999999999),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 24.0, 36.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          'sxsm03mo' /* Hello World */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                      ),
                                      TextFormField(
                                        controller:
                                            _model.fullNameTextFieldController,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: FFLocalizations.of(context)
                                              .getText(
                                            'r6psupdo' /* Nombre completo */,
                                          ),
                                          hintText: FFLocalizations.of(context)
                                              .getText(
                                            '6v6jo30c' /* Ingresa tu nombre aquí */,
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFFEC7484),
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          filled: true,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryBtnText,
                                          prefixIcon: Icon(
                                            Icons.person,
                                          ),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .titleSmall,
                                        keyboardType:
                                            TextInputType.emailAddress,
                                        validator: _model
                                            .fullNameTextFieldControllerValidator
                                            .asValidator(context),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 20.0, 0.0, 0.0),
                                        child: TextFormField(
                                          controller:
                                              _model.emailTextFieldController,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText:
                                                FFLocalizations.of(context)
                                                    .getText(
                                              'hfjgobcp' /* Email */,
                                            ),
                                            hintText:
                                                FFLocalizations.of(context)
                                                    .getText(
                                              '9at6nq9b' /* Ingresa tu email aquí */,

                                            ),
                                           /* errorText:
                                                FFLocalizations.of(context)
                                              .getText('correoregis'/*El correo ya fue registrado, intenta con otro*/,
                                                ),

                                            */
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFFEC7484),
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            filled: true,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryBtnText,
                                            prefixIcon: Icon(
                                              Icons.email_outlined,
                                            ),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .titleSmall,
                                          keyboardType:
                                              TextInputType.emailAddress,
                                          validator: _model
                                              .emailTextFieldControllerValidator
                                              .asValidator(context),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 20.0, 0.0, 0.0),
                                        child: TextFormField(
                                          controller: _model
                                              .passwordTextFieldController,
                                          obscureText: !_model
                                              .passwordTextFieldVisibility,
                                          decoration: InputDecoration(
                                            isDense: true,
                                            labelText:
                                                FFLocalizations.of(context)
                                                    .getText(
                                              'xcrx3ucc' /* Contraseña */,
                                            ),
                                            hintText:
                                                FFLocalizations.of(context)
                                                    .getText(
                                              '1fgkxpez' /* Ingresa tu contraseña aquí */,
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFFEC7484),
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            filled: true,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryBtnText,
                                            prefixIcon: Icon(
                                              Icons.lock,
                                            ),
                                            suffixIcon: InkWell(
                                              onTap: () => setState(
                                                () => _model
                                                        .passwordTextFieldVisibility =
                                                    !_model
                                                        .passwordTextFieldVisibility,
                                              ),
                                              focusNode: FocusNode(
                                                  skipTraversal: true),
                                              child: Icon(
                                                _model.passwordTextFieldVisibility
                                                    ? Icons.visibility_outlined
                                                    : Icons
                                                        .visibility_off_outlined,
                                                color: Color(0xFFEC7484),
                                                size: 22.0,
                                              ),
                                            ),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .titleSmall,
                                          validator: _model
                                              .passwordTextFieldControllerValidator
                                              .asValidator(context),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 20.0, 0.0, 0.0),
                                        child: TextFormField(
                                          controller: _model
                                              .confirmPasswordTextFieldController,
                                          obscureText: !_model
                                              .confirmPasswordTextFieldVisibility,
                                          decoration: InputDecoration(
                                            labelText:
                                                FFLocalizations.of(context)
                                                    .getText(
                                              'p8qyaq0c' /* Confirma tu contraseña */,
                                            ),
                                            hintText:
                                                FFLocalizations.of(context)
                                                    .getText(
                                              '9gb595gx' /* Ingresa nuevamente tu contrase... */,
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFFEC7484),
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            filled: true,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryBtnText,
                                            prefixIcon: Icon(
                                              Icons.lock_open,
                                            ),
                                            suffixIcon: InkWell(
                                              onTap: () => setState(
                                                () => _model
                                                        .confirmPasswordTextFieldVisibility =
                                                    !_model
                                                        .confirmPasswordTextFieldVisibility,
                                              ),
                                              focusNode: FocusNode(
                                                  skipTraversal: true),
                                              child: Icon(
                                                _model.confirmPasswordTextFieldVisibility
                                                    ? Icons.visibility_outlined
                                                    : Icons
                                                        .visibility_off_outlined,
                                                color: Color(0xFFEC7484),
                                                size: 22.0,
                                              ),
                                            ),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .titleSmall,
                                          validator: _model
                                              .confirmPasswordTextFieldControllerValidator
                                              .asValidator(context),
                                        ),
                                      ),

                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 24.0, 0.0, 0.0),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            FocusScope.of(context).unfocus();
                                            if (_model.formKey.currentState ==
                                                null ||
                                                !_model.formKey.currentState!
                                                    .validate()) {
                                              return;
                                            }

                                            final email = _model.emailTextFieldController.text;
                                            // Verifica si el correo ya existe en Firestore
                                            final userSnapshot = await FirebaseFirestore.instance
                                                .collection('user') // Reemplaza con el nombre de tu colección
                                                .where('email', isEqualTo: email)
                                                .get();
                                            // Verifica si el correo ya existe en Firestore
                                            if (userSnapshot.docs.isNotEmpty) {
                                              // El correo ya está en uso en Firestore, muestra un mensaje de error personalizado.
                                              ScaffoldMessenger.of(context).showSnackBar(
                                                SnackBar(
                                                  content: Text("El correo ya está registrado. Intente con otro correo."),
                                                  duration: Duration(seconds: 5),
                                                  backgroundColor: Color(0xFFEC7484),
                                                ),
                                              );
                                              return;
                                            }
                                            /*

                                            //compara las contraseñas
                                            if (_model
                                                .passwordTextFieldController
                                                .text != _model
                                                .confirmPasswordTextFieldController
                                                .text) {
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                SnackBar(
                                                  content: Text(
                                                    'Las contraseñas no coinciden',
                                                  ),
                                                ),
                                              );
                                              return;
                                            }
                                            */



                                            //// El correo no existe en Firestore, procede a crear la cuenta de usuario en la autenticación.
                                            try {
                                              final user = await authManager
                                                  .createAccountWithEmail(
                                                context,
                                                _model.emailTextFieldController
                                                    .text,
                                                _model.passwordTextFieldController
                                                    .text,
                                              );

                                              if (user == null) {
                                                return;
                                              }
                                              // Registro exitoso, redirige al usuario
                                              final userCreateData = createUserRecordData(
                                                isAsistent: false,
                                                displayName: _model
                                                    .fullNameTextFieldController
                                                    .text,
                                              );
                                              await UserRecord.collection
                                                  .doc(user.uid)
                                                  .update(userCreateData);

                                              await Navigator
                                                  .pushAndRemoveUntil(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        MenuPacienteWidget()),
                                                    (r) => false,
                                              );
                                            } catch (e) {
                                              if (e is FirebaseAuthException && e.code == 'email-already-in-use') {
                                                // El correo ya está en uso, muestra un mensaje de error personalizado.
                                                ScaffoldMessenger.of(context)
                                                    .showSnackBar(
                                                  SnackBar(
                                                    content: Text(
                                                        "El correo ya está en uso. Intente con otro correo."),
                                                    duration: Duration(
                                                        seconds: 5),
                                                    backgroundColor: Color(
                                                        0xFFEC7484),
                                                  ),
                                                );
                                                return; // Detén el proceso si el correo ya está en uso.
                                              }
                                            }

                                            if (_model
                                                .passwordTextFieldController
                                                .text != _model
                                                .confirmPasswordTextFieldController
                                                .text) {
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                SnackBar(
                                                  content: Text(
                                                    'Las contraseñas no coinciden',
                                                  ),
                                                ),
                                              );
                                              return;
                                            }
                                            await showDialog(
                                              context: context,
                                              builder: (alertDialogContext) {
                                                return AlertDialog(
                                                  title:
                                                  Text('Registro exitoso'),
                                                  content: Text(
                                                      '¡Gracias por registrarte!'),
                                                  actions: [
                                                    TextButton(
                                                      onPressed: () =>
                                                          Navigator.pop(
                                                              alertDialogContext),
                                                      child: Text(
                                                          'Iniciar Sesión'),
                                                    ),
                                                  ],
                                                );
                                              },
                                            );

                                          },
                                          text: FFLocalizations.of(context)
                                              .getText(
                                            'la8eaaa3' /* Registrate */,
                                          ),
                                          options: FFButtonOptions(
                                            width: 218.9,
                                            height: 50.0,
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            iconPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: Color(0xFFEC7484),
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily: 'Lexend Deca',
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                            elevation: 3.0,
                                            borderSide: BorderSide(
                                              color: Colors.transparent,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),

                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                          Align(
                            alignment: AlignmentDirectional(0.04, 0.91),
                            child: Image.asset(
                              'assets/images/mastografias_1.jpg',
                              width: 111.2,//151.2
                              height: 135.1,//175.1
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 0.9),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      FFLocalizations.of(context).getText(
                        '8pncratv' /* Ya tengo una cuenta:  */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Lexend Deca',
                            color: FlutterFlowTheme.of(context).accent1,
                            fontSize: 16.0,
                          ),
                    ),
                    FFButtonWidget(
                      onPressed: () async {
                        await Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => IniciarSesionWidget(),
                          ),
                        );
                      },
                      text: FFLocalizations.of(context).getText('3akwnyhh' /* Iniciar Sesión */),
                      options: FFButtonOptions(
                        width: 130.0,
                        height: 40.0,
                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: Color(0xFFECA090),
                        textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Lexend Deca',
                          color: Colors.white,
                        ),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
