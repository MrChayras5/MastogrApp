import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/calendario/calendario_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/menu_paciente/menu_paciente_widget.dart';
import '/mi_nueva_cita/mi_nueva_cita_widget.dart';
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
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MisCitasModel());
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
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBtnText,
        appBar: AppBar(
          backgroundColor: Color(0xFFEC7484),
          automaticallyImplyLeading: true,
          title: Align(
            alignment: AlignmentDirectional(-0.85, -0.25),
            child: Text(
              FFLocalizations.of(context).getText(
                '8ggzrm9y' /* Mis Citas */,
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'Lexend Deca',
                fontSize: 18.0,
              ),
            ),
          ),
          actions: [
            Container(
              width: 146.0,
              height: 100.0,
              decoration: BoxDecoration(
                color: Color(0xFFEC7484),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [],
              ),
            ),
          ],
          centerTitle: true,
          elevation: 4.0,
        ),
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Stack(
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Container(
                      width: 455.2,
                      height: 868.7,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.0, -0.82),
                    child: Container(
                      width: 365.2,
                      height: 171.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).lineColor,
                      ),
                      child: StreamBuilder<List<NuevaCitaRecord>>(
                        stream: queryNuevaCitaRecord(
                          queryBuilder: (nuevaCitaRecord) => nuevaCitaRecord
                              .where('userID', isEqualTo: currentUserReference)
                              .where('idAutorizar', isEqualTo: true),
                        ),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 50.0,
                                height: 50.0,
                                child: CircularProgressIndicator(
                                  color: FlutterFlowTheme.of(context).primary,
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
                              return Container(
                                width: 100.0,
                                height: 120.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).lineColor,
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 0.0, 0.0),
                                  child: Stack(
                                    children: [
                                      Text(
                                        listViewNuevaCitaRecord.nombre,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                          fontFamily: 'Lexend Deca',
                                          color:
                                          FlutterFlowTheme.of(context)
                                              .darkBG,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 20.0, 0.0, 0.0),
                                        child: Text(
                                          listViewNuevaCitaRecord.estudio,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                            fontFamily: 'Lexend Deca',
                                            color:
                                            FlutterFlowTheme.of(context)
                                                .darkBG,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 40.0, 0.0, 0.0),
                                        child: Text(
                                          dateTimeFormat(
                                            'yMd',
                                            listViewNuevaCitaRecord.fecha!,
                                            locale: FFLocalizations.of(context)
                                                .languageCode,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                            fontFamily: 'Lexend Deca',
                                            color:
                                            FlutterFlowTheme.of(context)
                                                .darkBG,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 60.0, 0.0, 0.0),
                                        child: Text(
                                          listViewNuevaCitaRecord.lugar,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                            fontFamily: 'Lexend Deca',
                                            color:
                                            FlutterFlowTheme.of(context)
                                                .darkBG,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 90.0, 0.0, 0.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'm1udv3za' /* ------------------------------... */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                            fontFamily: 'Lexend Deca',
                                            color:
                                            FlutterFlowTheme.of(context)
                                                .darkBG,
                                          ),
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
                  Align(
                    alignment: AlignmentDirectional(0.0, -0.3),
                    child: Padding(
                      padding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 70.0, 0.0, 0.0),
                      child: Container(
                        width: 365.2,
                        height: 167.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).lineColor,
                        ),
                        child: StreamBuilder<List<NuevaCitaRecord>>(
                          stream: queryNuevaCitaRecord(
                            queryBuilder: (nuevaCitaRecord) => nuevaCitaRecord
                                .where('userID',
                                isEqualTo: currentUserReference)
                                .where('idEdit', isEqualTo: true),
                          ),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 50.0,
                                  height: 50.0,
                                  child: CircularProgressIndicator(
                                    color: FlutterFlowTheme.of(context).primary,
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
                                return Container(
                                  width: 100.0,
                                  height: 120.0,
                                  decoration: BoxDecoration(
                                    color:
                                    FlutterFlowTheme.of(context).lineColor,
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10.0, 0.0, 0.0, 0.0),
                                    child: Stack(
                                      children: [
                                        Text(
                                          listViewNuevaCitaRecord.nombre,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                            fontFamily: 'Lexend Deca',
                                            color:
                                            FlutterFlowTheme.of(context)
                                                .darkBG,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 20.0, 0.0, 0.0),
                                          child: Text(
                                            listViewNuevaCitaRecord.estudio,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                              fontFamily: 'Lexend Deca',
                                              color: FlutterFlowTheme.of(
                                                  context)
                                                  .darkBG,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 40.0, 0.0, 0.0),
                                          child: Text(
                                            valueOrDefault<String>(
                                              listViewNuevaCitaRecord.fecha
                                                  ?.toString(),
                                              'AquiVaLaFecha',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                              fontFamily: 'Lexend Deca',
                                              color: FlutterFlowTheme.of(
                                                  context)
                                                  .darkBG,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 60.0, 0.0, 0.0),
                                          child: Text(
                                            listViewNuevaCitaRecord.lugar,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                              fontFamily: 'Lexend Deca',
                                              color: FlutterFlowTheme.of(
                                                  context)
                                                  .darkBG,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 80.0, 0.0, 0.0),
                                          child: Text(
                                            listViewNuevaCitaRecord
                                                .motivoCambio,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                              fontFamily: 'Lexend Deca',
                                              color: FlutterFlowTheme.of(
                                                  context)
                                                  .darkBG,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 100.0, 0.0, 0.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'pxitbise' /* ------------------------------... */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                              fontFamily: 'Lexend Deca',
                                              color: FlutterFlowTheme.of(
                                                  context)
                                                  .darkBG,
                                            ),
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
                  Align(
                    alignment: AlignmentDirectional(0.8, 0.65),
                    child: FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30.0,
                      borderWidth: 1.0,
                      buttonSize: 65.0,
                      fillColor: Color(0xFFEC7484),
                      icon: Icon(
                        Icons.add,
                        color: FlutterFlowTheme.of(context).primaryBtnText,
                        size: 30.0,
                      ),
                      onPressed: () async {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MiNuevaCitaWidget(),
                          ),
                        );
                      },
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-0.89, -0.9),
                    child: Padding(
                      padding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
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
                  ),
                  Align(
                    alignment: AlignmentDirectional(-0.88, -0.44),
                    child: Padding(
                      padding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 1.0),
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
                ],
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 1.0),
                child: Container(
                  width: 396.7,
                  height: 100.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                        EdgeInsetsDirectional.fromSTEB(40.0, 0.0, 0.0, 0.0),
                        child: FlutterFlowIconButton(
                          borderColor: Colors.white,
                          borderRadius: 30.0,
                          borderWidth: 1.0,
                          buttonSize: 60.0,
                          fillColor: Colors.white,
                          hoverColor: Color(0xFFEC7484),
                          icon: Icon(
                            Icons.insert_drive_file_outlined,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 25.0,
                          ),
                          onPressed: () {
                            print('IconButton pressed ...');
                          },
                        ),
                      ),
                      Padding(
                        padding:
                        EdgeInsetsDirectional.fromSTEB(65.0, 0.0, 0.0, 0.0),
                        child: FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 30.0,
                          borderWidth: 1.0,
                          buttonSize: 60.0,
                          fillColor: Colors.white,
                          hoverColor: Color(0xFFEC7484),
                          icon: Icon(
                            Icons.home_sharp,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 33.0,
                          ),
                          onPressed: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MenuPacienteWidget(),
                              ),
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding:
                        EdgeInsetsDirectional.fromSTEB(70.0, 0.0, 0.0, 0.0),
                        child: FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 30.0,
                          borderWidth: 1.0,
                          buttonSize: 60.0,
                          fillColor: Colors.white,
                          hoverColor: Color(0xFFEC7484),
                          icon: Icon(
                            Icons.calendar_today_outlined,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 25.0,
                          ),
                          onPressed: () async {
                            await Navigator.push(
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