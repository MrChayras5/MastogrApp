import 'package:firebase_auth/firebase_auth.dart';

import '../auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/calendario/calendario_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/menu_paciente/menu_paciente_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'mis_citas_model.dart';
export 'mis_citas_model.dart';



class MisCitasWidget extends StatefulWidget {
  const MisCitasWidget({Key? key}) : super(key: key);

  @override
  _MisCitasWidgetState createState() => _MisCitasWidgetState();
}

class _MisCitasWidgetState extends State<MisCitasWidget> {
  late MisCitasModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final user = FirebaseAuth.instance.currentUser;


  get numCita => null;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MisCitasModel());

  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBtnText,//primaryBtnText
        appBar:AppBar(
          backgroundColor: Color(0xFFEC7484),
          automaticallyImplyLeading: false,
          title: Align(
            alignment: AlignmentDirectional(-0.85, -0.25),
            child: Text(
              FFLocalizations.of(context).getText(
                'v5elkwgq' /* Mis citas */,
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'Lexend Deca',
                fontSize: 18,
              ),
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
          centerTitle: true,
          elevation: 4,
        ),

        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Container(
                width: 450,
                height: 710,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0, -1),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 35, 0, 0),
                        child: Container(
                          width:MediaQuery.of(context).size.width*0.9,
                          //width: 365.2,
                          height: 171,//191
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).primary,
                              width: 2,
                            ),
                          ),
                          child: StreamBuilder<List<NuevaCitaRecord>>(
                            stream: queryNuevaCitaRecord(
                              queryBuilder: (nuevaCitaRecord) => nuevaCitaRecord
                                  .where(
                                'idAutorizar',
                                isEqualTo: true,
                              )
                                  .where(
                                'userID',
                                isEqualTo: currentUserReference,
                              ),
                            ),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50,
                                    height: 50,
                                    child: CircularProgressIndicator(
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        FlutterFlowTheme.of(context).primary,
                                      ),
                                    ),
                                  ),
                                );
                              }
                              List<NuevaCitaRecord>
                              listViewNuevaCitaRecordList = snapshot.data!;
                              return ListView.builder(
                                padding: EdgeInsets.zero,
                                scrollDirection: Axis.vertical,
                                itemCount: listViewNuevaCitaRecordList.length,
                                itemBuilder: (context, listViewIndex) {
                                  final listViewNuevaCitaRecord =
                                  listViewNuevaCitaRecordList[
                                  listViewIndex];
                                  return Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                      5, 5, 5, 10),
                                  child: Container(
                                  width: 100,
                                  height: 125,
                                  decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .lineColor,
                                  ),
                                    ///////
                                    child: Row(

                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              10, 0, 0, 0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 5, 5, 0),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'q0sjzx7o' /* Estudio: */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                      context)
                                                      .bodyMedium
                                                      .override(
                                                    fontFamily:
                                                    'Lexend Deca',
                                                    color:
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .darkBG,
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '3xb0as0s' /* Estado: */,
                                                ),
                                                style: FlutterFlowTheme.of(
                                                    context)
                                                    .bodyMedium
                                                    .override(
                                                  fontFamily: 'Lexend Deca',
                                                  color:
                                                  FlutterFlowTheme.of(
                                                      context)
                                                      .darkBG,
                                                ),
                                              ),
                                              Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'lp41show' /* Lugar: */,
                                                ),
                                                style: FlutterFlowTheme.of(
                                                    context)
                                                    .bodyMedium
                                                    .override(
                                                  fontFamily: 'Lexend Deca',
                                                  color:
                                                  FlutterFlowTheme.of(
                                                      context)
                                                      .darkBG,
                                                ),
                                              ),
                                              Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '5hvemep6' /* Fecha: */,
                                                ),
                                                style: FlutterFlowTheme.of(
                                                    context)
                                                    .bodyMedium
                                                    .override(
                                                  fontFamily: 'Lexend Deca',
                                                  color:
                                                  FlutterFlowTheme.of(
                                                      context)
                                                      .darkBG,
                                                ),
                                              ),
                                              Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'rbqkj6hk' /* Hora: */,
                                                ),
                                                style: FlutterFlowTheme.of(
                                                    context)
                                                    .bodyMedium
                                                    .override(
                                                  fontFamily: 'Lexend Deca',
                                                  color:
                                                  FlutterFlowTheme.of(
                                                      context)
                                                      .darkBG,
                                                ),
                                              ),



                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              10, 5, 0, 0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              /*
                                              Text(
                                                listViewNuevaCitaRecord.nombre,
                                                style: FlutterFlowTheme.of(
                                                    context)
                                                    .bodyMedium
                                                    .override(
                                                  fontFamily: 'Lexend Deca',
                                                  color:
                                                  FlutterFlowTheme.of(
                                                      context)
                                                      .primaryText,
                                                ),
                                              ),
                                              *
                                               */
                                              Text(
                                                listViewNuevaCitaRecord.estudio,
                                                style: FlutterFlowTheme.of(
                                                    context)
                                                    .bodyMedium
                                                    .override(
                                                  fontFamily: 'Lexend Deca',
                                                  color:
                                                  FlutterFlowTheme.of(
                                                      context)
                                                      .primaryText,
                                                ),
                                              ),
                                              Text(
                                                listViewNuevaCitaRecord.estado,
                                                style: FlutterFlowTheme.of(
                                                    context)
                                                    .bodyMedium
                                                    .override(
                                                  fontFamily: 'Lexend Deca',
                                                  color:
                                                  FlutterFlowTheme.of(
                                                      context)
                                                      .primaryText,
                                                ),
                                              ),
                                              Text(
                                                listViewNuevaCitaRecord.lugar,
                                                style: FlutterFlowTheme.of(
                                                    context)
                                                    .bodyMedium
                                                    .override(
                                                  fontFamily: 'Lexend Deca',
                                                  color:
                                                  FlutterFlowTheme.of(
                                                      context)
                                                      .primaryText,
                                                ),
                                              ),
                                              Text(
                                                dateTimeFormat(
                                                  'yMd',
                                                  listViewNuevaCitaRecord
                                                      .fecha!,
                                                  locale: FFLocalizations.of(
                                                      context)
                                                      .languageCode,
                                                ),
                                                style: FlutterFlowTheme.of(
                                                    context)
                                                    .bodyMedium
                                                    .override(
                                                  fontFamily: 'Lexend Deca',
                                                  color:
                                                  FlutterFlowTheme.of(
                                                      context)
                                                      .primaryText,
                                                ),
                                              ),
                                              Text(
                                                dateTimeFormat(
                                                  'jm',
                                                  listViewNuevaCitaRecord
                                                      .hora!,
                                                  locale: FFLocalizations.of(
                                                      context)
                                                      .languageCode,
                                                ),
                                                style: FlutterFlowTheme.of(
                                                    context)
                                                    .bodyMedium
                                                    .override(
                                                  fontFamily: 'Lexend Deca',
                                                  color:
                                                  FlutterFlowTheme.of(
                                                      context)
                                                      .primaryText,
                                                ),
                                              ),

                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              19, 5, 0, 0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    -1.05, 0.9),
                                                child: ClipRRect(
                                                  borderRadius:
                                                  BorderRadius.circular(20),
                                                  child: Image.asset(
                                                    'assets/images/logo.png',
                                                    width: 126,//136
                                                    height: 94,//104
                                                    fit: BoxFit.contain,
                                                  ),
                                                ),
                                              ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.only(top: 0),
                                      child: Text(
                                                'Cita #${listViewNuevaCitaRecord.numCita.toString()}', // Concatenamos "Num:" con el valor de numCita
                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                  fontFamily: 'Lexend Deca',
                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                ),
                                              ),
                                    ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  );
                                },
                              );
                            },
                          ),
                        ),
                      ),
                    ),


                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 37, 0, 0),
                      child: Container(
                        width:MediaQuery.of(context).size.width*0.9,
                        //width: 365.2,
                        height: 171,
                        decoration: BoxDecoration(
                          color:
                          FlutterFlowTheme.of(context).secondaryBackground,
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).primary,
                            width: 2,
                          ),
                        ),
                        child: StreamBuilder<List<NuevaCitaRecord>>(
                          stream: queryNuevaCitaRecord(
                            queryBuilder: (nuevaCitaRecord) => nuevaCitaRecord
                                //.where('idAutorizar', isEqualTo: true)
                                .where('idEdit', isEqualTo: true
                            )
                                  .where(
                          'userID',
                          isEqualTo: currentUserReference,
                          ),
                          ),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 50,
                                  height: 50,
                                  child: CircularProgressIndicator(
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                      FlutterFlowTheme.of(context).primary,
                                    ),
                                  ),
                                ),
                              );
                            }
                            List<NuevaCitaRecord> listViewNuevaCitaRecordList =
                            snapshot.data!;
                            return ListView.builder(
                              padding: EdgeInsets.zero,
                              scrollDirection: Axis.vertical,
                              itemCount: listViewNuevaCitaRecordList.length,
                              itemBuilder: (context, listViewIndex) {
                                final listViewNuevaCitaRecord =
                                listViewNuevaCitaRecordList[listViewIndex];
                                return Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                    5, 5, 5, 5),
                                child: Container(
                                width: 100,
                                height: 133,
                                decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .lineColor,
                                ),
                                child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                Padding(
                                padding:
                                EdgeInsetsDirectional.fromSTEB(
                                10, 0, 0, 0),
                                child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                Padding(
                                padding: EdgeInsetsDirectional
                                    .fromSTEB(0, 5, 5, 0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'q0sjzx7o' /* Estudio: */,
                                                ),
                                                style: FlutterFlowTheme.of(
                                                    context)
                                                    .bodyMedium
                                                    .override(
                                                  fontFamily: 'Lexend Deca',
                                                  color:
                                                  FlutterFlowTheme.of(
                                                      context)
                                                      .darkBG,
                                                ),
                                              ),
                                            ),
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '3xb0as0s' /* Estado: */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                  context)
                                                  .bodyMedium
                                                  .override(
                                                fontFamily: 'Lexend Deca',
                                                color: FlutterFlowTheme.of(
                                                    context)
                                                    .darkBG,
                                              ),
                                            ),
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'lp41show' /* Lugar: */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                  context)
                                                  .bodyMedium
                                                  .override(
                                                fontFamily: 'Lexend Deca',
                                                color: FlutterFlowTheme.of(
                                                    context)
                                                    .darkBG,
                                              ),
                                            ),
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '5hvemep6' /* Fecha: */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                  context)
                                                  .bodyMedium
                                                  .override(
                                                fontFamily: 'Lexend Deca',
                                                color: FlutterFlowTheme.of(
                                                    context)
                                                    .darkBG,
                                              ),
                                            ),
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'rbqkj6hk' /* Hora: */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                  context)
                                                  .bodyMedium
                                                  .override(
                                                fontFamily: 'Lexend Deca',
                                                color: FlutterFlowTheme.of(
                                                    context)
                                                    .darkBG,
                                              ),
                                            ),
                                  Text(
                                    FFLocalizations.of(context)
                                        .getText(
                                      'fh6w4xlgssss' /* Motivo: */,
                                    ),
                                    style: FlutterFlowTheme.of(
                                        context)
                                        .bodyMedium
                                        .override(
                                      fontFamily: 'Lexend Deca',
                                      color: FlutterFlowTheme.of(
                                          context)
                                          .darkBG,
                                    ),
                                  ),


                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20, 4, 0, 0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 0, 0),
                                              child: Text(
                                                listViewNuevaCitaRecord.estudio,
                                                style: FlutterFlowTheme.of(
                                                    context)
                                                    .bodyMedium
                                                    .override(
                                                  fontFamily: 'Lexend Deca',
                                                  color:
                                                  FlutterFlowTheme.of(
                                                      context)
                                                      .primaryText,
                                                ),
                                              ),
                                            ),
                                            Text(
                                              listViewNuevaCitaRecord.estado,
                                              style: FlutterFlowTheme.of(
                                                  context)
                                                  .bodyMedium
                                                  .override(
                                                fontFamily: 'Lexend Deca',
                                                color:
                                                FlutterFlowTheme.of(
                                                    context)
                                                    .primaryText,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 0, 0),
                                              child: Text(
                                                listViewNuevaCitaRecord.lugar,
                                                style: FlutterFlowTheme.of(
                                                    context)
                                                    .bodyMedium
                                                    .override(
                                                  fontFamily: 'Lexend Deca',
                                                  color:
                                                  FlutterFlowTheme.of(
                                                      context)
                                                      .primaryText,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 0, 0),
                                              child: Text(
                                                dateTimeFormat(
                                                  'yMd',
                                                  listViewNuevaCitaRecord
                                                      .fecha!,
                                                  locale: FFLocalizations.of(
                                                      context)
                                                      .languageCode,
                                                ),
                                                style: FlutterFlowTheme.of(
                                                    context)
                                                    .bodyMedium
                                                    .override(
                                                  fontFamily: 'Lexend Deca',
                                                  color:
                                                  FlutterFlowTheme.of(
                                                      context)
                                                      .primaryText,
                                                ),
                                              ),
                                            ),
                                            Text(
                                              dateTimeFormat(
                                                'jm',
                                                listViewNuevaCitaRecord
                                                    .hora!,
                                                locale: FFLocalizations.of(
                                                    context)
                                                    .languageCode,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                  context)
                                                  .bodyMedium
                                                  .override(
                                                fontFamily: 'Lexend Deca',
                                                color:
                                                FlutterFlowTheme.of(
                                                    context)
                                                    .primaryText,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 3, 0, 0),
                                              child: InkWell(
                                                splashColor:
                                                Colors.transparent,
                                                focusColor:
                                                Colors.transparent,
                                                hoverColor:
                                                Colors.transparent,
                                                highlightColor:
                                                Colors.transparent,
                                                onTap: () async {
                                                  await showDialog(
                                                    context: context,
                                                    builder:
                                                        (alertDialogContext) {
                                                      return AlertDialog(
                                                        title: Text(
                                                            'Motivo de cambio'),
                                                        content: Text(
                                                            valueOrDefault<
                                                                String>(
                                                              listViewNuevaCitaRecord
                                                                  .motivoCambio,
                                                              'Motivo....',
                                                            )),
                                                        actions: [
                                                          TextButton(
                                                            onPressed: () =>
                                                                Navigator.pop(
                                                                    alertDialogContext),
                                                            child: Text('Ok'),
                                                          ),
                                                        ],
                                                      );
                                                    },
                                                  );
                                                },
                                                child: Container(
                                                  width: 85,
                                                  height: 20,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme
                                                        .of(context)
                                                        .secondaryBackground,
                                                    border: Border.all(
                                                      color: FlutterFlowTheme.of(context).primary,
                                                      width: 1,
                                                    ),
                                                  ),
                                                  child: Text(
                                                    FFLocalizations.of(context).getText(
                                                      'bydb1cdd' /* Motivo */,
                                                    ),
                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                      fontFamily: 'Lexend Deca',
                                                      color: FlutterFlowTheme.of(context).darkBG,
                                                      fontSize: 14,
                                                      fontWeight: FontWeight.normal,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),

                                          ],
                                        ),
                                      ),
                                  Padding(
                                    padding:
                                    EdgeInsetsDirectional.fromSTEB(
                                        19, 5, 0, 0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                      Align(
                                        alignment: AlignmentDirectional(
                                            -1.05, 0.9),
                                        child: ClipRRect(
                                          borderRadius:
                                          BorderRadius.circular(20),
                                          child: Image.asset(
                                            'assets/images/logo.png',
                                            width: 126,//136
                                            height: 94,//104
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ),
                                        Padding(
                                          padding: EdgeInsetsDirectional.only(top: 0),
                                          child: Text(
                                            'Cita #${listViewNuevaCitaRecord.numCita.toString()}', // Concatenamos "Num:" con el valor de numCita
                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                              fontFamily: 'Lexend Deca',
                                              color: FlutterFlowTheme.of(context).primaryText,
                                            ),
                                          ),
                                        ),
                                    ],
                                  ),
                                  ),
                                ],
                                  ),
                                ),
                                );
                              },
                            );
                          },
                        ),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 37, 0, 0),
                      child: Container(width:MediaQuery.of(context).size.width*0.9,
                        //width: 365.2,
                        height: 171,
                        decoration: BoxDecoration(
                          color:
                          FlutterFlowTheme.of(context).secondaryBackground,
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).primary,
                            width: 2,
                          ),
                        ),

                        child: StreamBuilder<List<NuevaCitaRecord>>(
                          stream: queryNuevaCitaRecord(
                            queryBuilder: (nuevaCitaRecord) => nuevaCitaRecord
                            //.where('idAutorizar', isEqualTo: true)
                                .where('idPeticion', isEqualTo: true)
                                  .where(
                          'userID',
                          isEqualTo: currentUserReference,
                          ),

                          ),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 50,
                                  height: 50,
                                  child: CircularProgressIndicator(
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                      FlutterFlowTheme.of(context).primary,
                                    ),
                                  ),
                                ),
                              );
                            }
                            List<NuevaCitaRecord> listViewNuevaCitaRecordList =
                            snapshot.data!;
                            return ListView.builder(
                              padding: EdgeInsets.zero,
                              scrollDirection: Axis.vertical,
                              itemCount: listViewNuevaCitaRecordList.length,
                              itemBuilder: (context, listViewIndex) {
                                final listViewNuevaCitaRecord =
                                listViewNuevaCitaRecordList[listViewIndex];
                                return Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                    5, 5, 5, 5),
                                child: Container(
                                width: 100,
                                height: 133,
                                decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .lineColor,
                                ),
                                child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                Padding(
                                padding:
                                EdgeInsetsDirectional.fromSTEB(
                                10, 0, 0, 0),
                                child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                Padding(
                                padding: EdgeInsetsDirectional
                                    .fromSTEB(0, 5, 5, 0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'q0sjzx7o' /* Estudio: */,
                                                ),
                                                style: FlutterFlowTheme.of(
                                                    context)
                                                    .bodyMedium
                                                    .override(
                                                  fontFamily: 'Lexend Deca',
                                                  color:
                                                  FlutterFlowTheme.of(
                                                      context)
                                                      .darkBG,
                                                ),
                                              ),
                                            ),
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '3xb0as0s' /* Estado: */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                  context)
                                                  .bodyMedium
                                                  .override(
                                                fontFamily: 'Lexend Deca',
                                                color: FlutterFlowTheme.of(
                                                    context)
                                                    .darkBG,
                                              ),
                                            ),
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'lp41show' /* Lugar: */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                  context)
                                                  .bodyMedium
                                                  .override(
                                                fontFamily: 'Lexend Deca',
                                                color: FlutterFlowTheme.of(
                                                    context)
                                                    .darkBG,
                                              ),
                                            ),
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '5hvemep6' /* Fecha: */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                  context)
                                                  .bodyMedium
                                                  .override(
                                                fontFamily: 'Lexend Deca',
                                                color: FlutterFlowTheme.of(
                                                    context)
                                                    .darkBG,
                                              ),
                                            ),
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'rbqkj6hk' /* Hora: */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                  context)
                                                  .bodyMedium
                                                  .override(
                                                fontFamily: 'Lexend Deca',
                                                color: FlutterFlowTheme.of(
                                                    context)
                                                    .darkBG,
                                              ),
                                            ),
                                            Text(
                                              FFLocalizations.of(context).getText(
                                                'rbqkj6hkkkkk' /* Petición: */,
                                              ),
                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                fontFamily: 'Lexend Deca',
                                                color: FlutterFlowTheme.of(context).darkBG,
                                              ),
                                            )

                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20, 0, 0, 0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Flexible(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 5, 5, 0),
                                                child: Text(
                                                  listViewNuevaCitaRecord
                                                      .estudio,
                                                  textAlign: TextAlign.start,
                                                  style: FlutterFlowTheme.of(
                                                      context)
                                                      .bodyMedium
                                                      .override(
                                                    fontFamily:
                                                    'Lexend Deca',
                                                    color:
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .darkBG,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Flexible(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 9, 0),
                                                child: Text(
                                                  listViewNuevaCitaRecord
                                                      .estado,
                                                  textAlign: TextAlign.start,
                                                  style: FlutterFlowTheme.of(
                                                      context)
                                                      .bodyMedium
                                                      .override(
                                                    fontFamily:
                                                    'Lexend Deca',
                                                    color:
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .darkBG,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 18, 0),
                                              child: Text(
                                                listViewNuevaCitaRecord.lugar,
                                                textAlign: TextAlign.start,
                                                style: FlutterFlowTheme.of(
                                                    context)
                                                    .bodyMedium
                                                    .override(
                                                  fontFamily: 'Lexend Deca',
                                                  color:
                                                  FlutterFlowTheme.of(
                                                      context)
                                                      .darkBG,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 15, 0),
                                              child: Text(
                                                dateTimeFormat(
                                                  'yMd',
                                                  listViewNuevaCitaRecord
                                                      .fecha!,
                                                  locale: FFLocalizations.of(
                                                      context)
                                                      .languageCode,
                                                ),
                                                textAlign: TextAlign.start,
                                                style: FlutterFlowTheme.of(
                                                    context)
                                                    .bodyMedium
                                                    .override(
                                                  fontFamily: 'Lexend Deca',
                                                  color:
                                                  FlutterFlowTheme.of(
                                                      context)
                                                      .darkBG,
                                                ),
                                              ),
                                            ),
                                            Text(
                                              dateTimeFormat(
                                                'jm',
                                                listViewNuevaCitaRecord.hora!,
                                                locale:
                                                FFLocalizations.of(context)
                                                    .languageCode,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                  context)
                                                  .bodyMedium
                                                  .override(
                                                fontFamily: 'Lexend Deca',
                                                color: FlutterFlowTheme.of(
                                                    context)
                                                    .darkBG,
                                              ),
                                            ),
                                            Text(
                                              listViewNuevaCitaRecord.idAutorizar ? 'Autorizada' : 'No Autorizada',
                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                fontFamily: 'Lexend Deca',
                                                color: listViewNuevaCitaRecord.idAutorizar ? Colors.green : Colors.red,

                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [


                                          Align(
                                            alignment: AlignmentDirectional(
                                                -1.05, 0.92),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(15, 5, 0, 0),
                                              child: ClipRRect(
                                                borderRadius:
                                                BorderRadius.circular(20),
                                                child: Image.asset(
                                                  'assets/images/logo.png',
                                                  width: 126,//136
                                                  height: 94,//104
                                                  fit: BoxFit.contain,
                                                ),

                                              ),

                                            ),

                                          ),
                                          Padding(
                                            padding: EdgeInsetsDirectional.fromSTEB(10,0,0,0),
                                            child: Text(
                                              'Cita #${listViewNuevaCitaRecord.numCita.toString()}', // Concatenamos "Num:" con el valor de numCita
                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                fontFamily: 'Lexend Deca',
                                                color: FlutterFlowTheme.of(context).primaryText,
                                              ),
                                            ),
                                          ),


                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                );
                              },
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.850, -0.97),
                child: Text(
                  FFLocalizations.of(context).getText(
                    'jwn7q2w0' /* Citas Autorizadas */,
                  ),
                  style: FlutterFlowTheme.of(context).titleSmall.override(
                    fontFamily: 'Lexend Deca',
                    color: Color(0xFFEC7484),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.850, -0.44),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 1),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      '0xswplfx' /* Citas Editadas */,
                    ),
                    style: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'Lexend Deca',
                      color: Color(0xFFEC7484),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.850, 0.09),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'ptdcitas' /* Peticiones de citas */,
                    ),
                    style: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'Lexend Deca',
                      color: Color(0xFFEC7484),
                    ),
                  ),
                ),
              ),

              Align(
                alignment: AlignmentDirectional(0, 1),
                child: Container(
                  width: 396.7,
                  height: 70,//100
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(40, 0, 0, 0),
                        child: FlutterFlowIconButton(
                          borderColor: Colors.white,
                          borderRadius: 30,
                          borderWidth: 1,
                          buttonSize: 60,
                          fillColor: Colors.white,
                          hoverColor: Color(0xFFEC7484),
                          icon: Icon(
                            Icons.insert_drive_file_outlined,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 25,
                          ),
                          onPressed: () {
                            print('IconButton pressed ...');
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(65, 0, 0, 0),
                        child: FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 30,
                          borderWidth: 1,
                          buttonSize: 60,
                          fillColor: Colors.white,
                          hoverColor: Color(0xFFEC7484),
                          icon: Icon(
                            Icons.home_sharp,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 33,
                          ),
                          onPressed: () async {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MenuPacienteWidget(),
                              ),
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(70, 0, 0, 0),
                        child: FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 30,
                          borderWidth: 1,
                          buttonSize: 60,
                          fillColor: Colors.white,
                          hoverColor: Color(0xFFEC7484),
                          icon: Icon(
                            Icons.calendar_today_outlined,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 25,
                          ),
                          onPressed: () async {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CalendarioWidget(),
                              ),
                            );
                          },
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

