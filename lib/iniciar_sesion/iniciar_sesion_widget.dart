import 'package:firebase_auth/firebase_auth.dart';

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
import 'iniciar_sesion_model.dart';
export 'iniciar_sesion_model.dart';

class IniciarSesionWidget extends StatefulWidget {
  const IniciarSesionWidget({Key? key}) : super(key: key);

  @override
  _IniciarSesionWidgetState createState() => _IniciarSesionWidgetState();
}

class _IniciarSesionWidgetState extends State<IniciarSesionWidget> {
  late IniciarSesionModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IniciarSesionModel());

    _model.emailTextFieldController ??= TextEditingController();
    _model.passwordTextFieldController ??= TextEditingController();
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
              Container(
                width: MediaQuery.of(context).size.width * 1.0,
                height: MediaQuery.of(context).size.height * 0.765,
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
                        alignment: AlignmentDirectional(0.05, -0.86),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'ev3jlr59' /* Iniciar Sesión: */,
                          ),
                          textAlign: TextAlign.center,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Lexend Deca',
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.w300,
                                  ),
                        ),
                      ),
                      Form(
                        key: _model.formKey,
                        autovalidateMode: AutovalidateMode.disabled,
                        child: Align(
                          alignment: AlignmentDirectional(0.11, 1.03),
                          child: Container(
                            width: 319.8,
                            height: 554.7,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              shape: BoxShape.rectangle,
                            ),
                            alignment: AlignmentDirectional(
                                0.3999999999999999, 0.6499999999999999),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'ns6l3xey' /* Hello World
 */
                                      ,
                                    ),
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                  TextFormField(
                                    controller: _model.emailTextFieldController,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText:
                                          FFLocalizations.of(context).getText(
                                        'jbtssaye' /* Email */,
                                      ),
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Lexend Deca',
                                            color: FlutterFlowTheme.of(context)
                                                .accent1,
                                          ),
                                      hintText:
                                          FFLocalizations.of(context).getText(
                                        'tg7plcxy' /* ejemplo@gmail.com */,
                                      ),
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .titleSmall,
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
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      filled: true,
                                      fillColor: Color(0xFFFBFBFB),
                                      prefixIcon: Icon(
                                        Icons.email_outlined,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                      ),
                                    ),
                                    style:
                                        FlutterFlowTheme.of(context).titleSmall,
                                    keyboardType: TextInputType.emailAddress,
                                    validator: _model
                                        .emailTextFieldControllerValidator
                                        .asValidator(context),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 20.0, 0.0, 0.0),
                                    child: TextFormField(
                                      controller:
                                          _model.passwordTextFieldController,
                                      obscureText:
                                          !_model.passwordTextFieldVisibility,
                                      decoration: InputDecoration(
                                        labelText:
                                            FFLocalizations.of(context).getText(
                                          '065e6dhs' /* Contraseña */,
                                        ),
                                        hintText:
                                            FFLocalizations.of(context).getText(
                                          'm6rusuqf' /* ejemplo1234 */,
                                        ),
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .titleSmall,
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
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        filled: true,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .primaryBtnText,
                                        prefixIcon: Icon(
                                          Icons.lock_outline,
                                          color: FlutterFlowTheme.of(context)
                                              .accent1,
                                        ),
                                        suffixIcon: InkWell(
                                          onTap: () => setState(
                                            () => _model
                                                    .passwordTextFieldVisibility =
                                                !_model
                                                    .passwordTextFieldVisibility,
                                          ),
                                          focusNode:
                                              FocusNode(skipTraversal: true),
                                          child: Icon(
                                            _model.passwordTextFieldVisibility
                                                ? Icons.visibility_outlined
                                                : Icons.visibility_off_outlined,
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
                                        0.0, 24.0, 0.0, 0.0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        // Oculta el teclado
                                        FocusScope.of(context).unfocus();
                                        if (_model.formKey.currentState ==
                                                null ||
                                            !_model.formKey.currentState!
                                                .validate()) {
                                          return;
                                        }

                                        final FirebaseAuth _auth = FirebaseAuth.instance;
                                        String email = _model.emailTextFieldController?.text ?? "";
                                        String password = _model.passwordTextFieldController?.text ?? "";
                                        try{
                                          UserCredential userCredential = await _auth.signInWithEmailAndPassword(
                                            email: email,
                                            password: password,
                                          );
                                          // Si llega a este punto, el inicio de sesión fue exitoso.
                                          // Puedes acceder a la información del usuario con userCredential.user.
                                          ////User? user = userCredential.user;
                                          final user =
                                          await authManager.signInWithEmail(
                                            context,
                                            _model.emailTextFieldController.text,
                                            _model
                                                .passwordTextFieldController.text,
                                          );
                                          if (user == null) {
                                            return;
                                          }

                                          if (valueOrDefault<bool>(
                                              currentUserDocument?.isAsistent,
                                              false)) {
                                            await Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    MenuAsistenteWidget(),
                                              ),
                                            );
                                          } else {
                                            await Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    MenuPacienteWidget(),
                                              ),
                                            );
                                          }

    } catch (e) {
    // Si hay un error, puedes manejarlo aquí, por ejemplo, mostrar un mensaje de error.
   // print("Error al iniciar sesión: $e");
    // Muestra un mensaje de error al usuario.
    if (e is FirebaseAuthException && e.code == 'user-not-found') {
      // El usuario no está registrado, muestra un mensaje de error personalizado.
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
              "El correo no está registrado. Regístrate antes de iniciar sesión."),
          duration: Duration(seconds: 5),
          backgroundColor: Color(0xFFEC7484),
        ),
      );
    }else {
      // Si hay un error, muestra un SnackBar con el mensaje de error.
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
              "Error al iniciar sesión: La contraseña es incorrecta."),
          duration: Duration(seconds: 5),
          // Opcional: Define la duración del SnackBar.
          backgroundColor: Color(
              0xFFEC7484), // Cambia el color de fondo a rojo (por ejemplo).
        ),
      );
    }
    }
    },









                                      text: FFLocalizations.of(context).getText(
                                        'sk0kxe3r' /* INICIAR SESIÓN */,
                                      ),
                                      options: FFButtonOptions(
                                        width: 200.0,
                                        height: 50.0,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: Color(0xFFEC7484),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Lexend Deca',
                                              color: Colors.white,
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.bold,
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
                        alignment: AlignmentDirectional(0.05, 0.8),
                        child: Image.asset(
                          'assets/images/mastografias_1.jpg',
                          width: 151.2,
                          height: 175.1,//175.1
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 0.74),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Password1Widget(),
                      ),
                    );
                  },
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'yr6w1e5o' /* ¿Olvido su contraseña? */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Lexend Deca',
                          color: FlutterFlowTheme.of(context).accent1,
                          fontSize: 16.0,
                        ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 0.88),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      FFLocalizations.of(context).getText(
                        '19zo83v3' /* Soy Nuevo Usuario:   */,
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
                            builder: (context) => RegistrateWidget(),
                          ),
                        );
                      },
                      text: FFLocalizations.of(context).getText('73alzzcb' /* Registrate */),
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
