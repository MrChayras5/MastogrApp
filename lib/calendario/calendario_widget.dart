import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'calendario_model.dart';
export 'calendario_model.dart';

class CalendarioWidget extends StatefulWidget {
  const CalendarioWidget({Key? key}) : super(key: key);

  @override
  _CalendarioWidgetState createState() => _CalendarioWidgetState();
}

class _CalendarioWidgetState extends State<CalendarioWidget> {
  late CalendarioModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CalendarioModel());
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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: Color(0xFFEC7484),
          automaticallyImplyLeading: true,
          title: Align(
            alignment: AlignmentDirectional(-0.85, -0.25),
            child: Text(
              FFLocalizations.of(context).getText(
                'v6mnkjmh' /* Mis Citas */,
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
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: AlignmentDirectional(0.15, 0.05),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 20.0, 0.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      '2o576p3m' /* Calendario */,
                    ),
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).headlineLarge,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, -0.5),
                child: FlutterFlowCalendar(
                  color: Color(0xFFEC7484),
                  weekFormat: false,
                  weekStartsMonday: false,
                  initialDate: getCurrentTimestamp,
                  onChange: (DateTimeRange? newSelectedDate) {
                    setState(
                            () => _model.calendarSelectedDay = newSelectedDate);
                  },
                  titleStyle: FlutterFlowTheme.of(context).titleSmall,
                  dayOfWeekStyle: FlutterFlowTheme.of(context).titleSmall,
                  dateStyle: TextStyle(),
                  selectedDateStyle: TextStyle(),
                  inactiveDateStyle: TextStyle(),
                  locale: FFLocalizations.of(context).languageCode,
                ),
              ),
              Text(
                '',
                style: FlutterFlowTheme.of(context).bodyMedium,
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 15.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                      EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'gsiawnek' /* Dias de sus citas */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Lexend Deca',
                          color: FlutterFlowTheme.of(context).darkBG,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                      EdgeInsetsDirectional.fromSTEB(70.0, 0.0, 0.0, 0.0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'dccjz03s' /* Citas del dia seleccionado */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Lexend Deca',
                          color: FlutterFlowTheme.of(context).darkBG,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(7.0, 0.0, 0.0, 0.0),
                    child: Container(
                      width: 183.0,
                      height: 230.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: StreamBuilder<List<NuevaCitaRecord>>(
                        stream: queryNuevaCitaRecord(
                          queryBuilder: (nuevaCitaRecord) => nuevaCitaRecord
                              .where('idAutorizar', isEqualTo: true)
                              .where('userID', isEqualTo: currentUserReference),
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
                              return ListTile(
                                title: Text(
                                  valueOrDefault<String>(
                                    dateTimeFormat(
                                      'yMd',
                                      listViewNuevaCitaRecord.fecha,
                                      locale: FFLocalizations.of(context)
                                          .languageCode,
                                    ),
                                    'fecha',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .override(
                                    fontFamily: 'Poppins',
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                trailing: Icon(
                                  Icons.arrow_forward_ios,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 20.0,
                                ),
                                tileColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                dense: false,
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ),
                  Container(
                    width: 196.0,
                    height: 229.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Padding(
                      padding:
                      EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                      child: StreamBuilder<List<NuevaCitaRecord>>(
                        stream: queryNuevaCitaRecord(
                          queryBuilder: (nuevaCitaRecord) => nuevaCitaRecord
                              .where('fecha',
                              isEqualTo: _model.calendarSelectedDay?.start)
                              .where('idAutorizar', isEqualTo: true)
                              .where('userID', isEqualTo: currentUserReference),
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
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: listViewNuevaCitaRecordList.length,
                            itemBuilder: (context, listViewIndex) {
                              final listViewNuevaCitaRecord =
                              listViewNuevaCitaRecordList[listViewIndex];
                              return ListTile(
                                title: Text(
                                  valueOrDefault<String>(
                                    listViewNuevaCitaRecord.lugar,
                                    'lugar aqui',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .override(
                                    fontFamily: 'Poppins',
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                subtitle: Text(
                                  valueOrDefault<String>(
                                    dateTimeFormat(
                                      'jm',
                                      listViewNuevaCitaRecord.hora,
                                      locale: FFLocalizations.of(context)
                                          .languageCode,
                                    ),
                                    'hora',
                                  ),
                                  style:
                                  FlutterFlowTheme.of(context).labelMedium,
                                ),
                                trailing: Icon(
                                  Icons.arrow_forward_ios,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 20.0,
                                ),
                                tileColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                dense: false,
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
