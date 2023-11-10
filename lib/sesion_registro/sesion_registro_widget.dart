import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/iniciar_sesion/iniciar_sesion_widget.dart';
import '/registrate/registrate_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'sesion_registro_model.dart';
export 'sesion_registro_model.dart';

class SesionRegistroWidget extends StatefulWidget {
  const SesionRegistroWidget({Key? key}) : super(key: key);

  @override
  _SesionRegistroWidgetState createState() => _SesionRegistroWidgetState();
}

class _SesionRegistroWidgetState extends State<SesionRegistroWidget> {
  late SesionRegistroModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SesionRegistroModel());
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
                height: MediaQuery.of(context).size.height * 0.830,//0.865
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
                        alignment: AlignmentDirectional(0.08, 0.09),
                        child: Container(
                          width: 320.7,
                          height: 575.4,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            shape: BoxShape.rectangle,
                          ),
                          alignment: AlignmentDirectional(
                              0.3999999999999999, 0.6499999999999999),
                          child: Align(
                            alignment: AlignmentDirectional(0.2, -0.15),
                            child: Stack(
                              alignment: AlignmentDirectional(
                                  0.10000000000000009, 0.19999999999999996),
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-0.02, 0.34),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      await Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              IniciarSesionWidget(),
                                        ),
                                      );
                                    },
                                    text: FFLocalizations.of(context).getText(
                                      'zwll9vf6' /* INICIAR SESIÓN */,
                                    ),
                                    icon: Icon(
                                      Icons.login,
                                      size: 15.0,
                                    ),
                                    options: FFButtonOptions(
                                      width: 234.5,
                                      height: 45.9,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Lexend Deca',
                                            color: Color(0xFF666666),
                                            fontSize: 14.0,
                                          ),
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.03, 0.65),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      await Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              RegistrateWidget(),
                                        ),
                                      );
                                    },
                                    text: FFLocalizations.of(context).getText(
                                      'q649eifg' /* REGISTRATE     */,
                                    ),
                                    icon: Icon(
                                      Icons.logout,
                                      size: 15.0,
                                    ),
                                    options: FFButtonOptions(
                                      width: 234.5,
                                      height: 45.9,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Lexend Deca',
                                            color: Color(0xFF666666),
                                            fontSize: 14.0,
                                          ),
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.06, -0.63),
                        child: Image.asset(
                          'assets/images/mastografias_1.jpg',
                          width: 294.5,
                          height: 264.2,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
