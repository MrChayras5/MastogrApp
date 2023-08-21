import '/backend/backend.dart';
import '/editar_citas/editar_citas_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/menu_asistente/menu_asistente_widget.dart';
import '/solicitud_citas/solicitud_citas_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'generar_reportes_aaasistnt_model.dart';
export 'generar_reportes_aaasistnt_model.dart';

class GenerarReportesAaasistntWidget extends StatefulWidget {
  const GenerarReportesAaasistntWidget({Key? key}) : super(key: key);

  @override
  _GenerarReportesAaasistntWidgetState createState() =>
      _GenerarReportesAaasistntWidgetState();
}

class _GenerarReportesAaasistntWidgetState
    extends State<GenerarReportesAaasistntWidget> {
  late GenerarReportesAaasistntModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GenerarReportesAaasistntModel());
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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: Color(0xFFEC7484),
          automaticallyImplyLeading: true,
          title: Align(
            alignment: AlignmentDirectional(-0.85, -0.25),
            child: Text(
              FFLocalizations.of(context).getText(
                'pclbcbbp' /* Reportes */,
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'Lexend Deca',
                fontSize: 18,
              ),
            ),
          ),
          actions: [
            Container(
              width: 146,
              height: 100,
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
          elevation: 4,
        ),
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Container(
                width: 386,
                height: 688,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: StreamBuilder<List<NuevaCitaRecord>>(
                  stream: queryNuevaCitaRecord(
                    queryBuilder: (nuevaCitaRecord) => nuevaCitaRecord
                        .where('idAutorizar', isEqualTo: false)
                        .where('idPeticion', isEqualTo: true)
                        .where('fecha',
                        isGreaterThanOrEqualTo: getCurrentTimestamp),
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
                          padding:
                          EdgeInsetsDirectional.fromSTEB(20, 25, 20, 0),
                          child: Container(
                            width: 349,
                            height: 305,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).accent4,
                            ),
                            child: Stack(
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                40, 0, 0, 0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    't14ns8mj' /* Nombre: */,
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

                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'r0q6fos7' /* Estudio: */,
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
                                                //cambio estudio cambio
                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '7kzxo6zc' /* EstudioCambio: */,
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

                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'ikdwlill' /* Estado: */,
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

                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '7kzxo6zcc' /* EstadoCambio: */,
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

                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'tm5x7iut' /* Lugar: */,
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

                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'tm5x7iutt' /* LugarCambio: */,
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

                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '76awkg77' /* Fecha: */,
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

                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '7kzxo6zcz' /* FechaCambio: */,
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

                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'mg0up9qx' /* Hora: */,
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

                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'mg0up9qxx' /* HoraCambio: */,
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
                                                        .darkBG
                                                        .withOpacity(0.5),
                                                  ),
                                                ),

                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                20, 0, 0, 0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Flexible(
                                                  child: Padding(
                                                    padding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                        0, 0, 5, 0),
                                                    child: Text(
                                                      listViewNuevaCitaRecord
                                                          .nombre,
                                                      textAlign:
                                                      TextAlign.start,
                                                      style:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .bodyMedium
                                                          .override(
                                                        fontFamily:
                                                        'Lexend Deca',
                                                        color: FlutterFlowTheme.of(
                                                            context)
                                                            .darkBG,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Flexible(
                                                  child: Padding(
                                                    padding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                        0, 0, 5, 0),
                                                    child: Text(
                                                      listViewNuevaCitaRecord
                                                          .estudio,
                                                      textAlign:
                                                      TextAlign.start,
                                                      style:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .bodyMedium
                                                          .override(
                                                        fontFamily:
                                                        'Lexend Deca',
                                                        color: FlutterFlowTheme.of(
                                                            context)
                                                            .darkBG,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Flexible(
                                                  child: Padding(
                                                    padding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                        0, 0, 5, 0),
                                                    child: Text(
                                                      listViewNuevaCitaRecord
                                                          .segundEstudi,

                                                      style:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .bodyMedium
                                                          .override(
                                                        fontFamily:
                                                        'Lexend Deca',
                                                        color: FlutterFlowTheme.of(
                                                            context)
                                                            .darkBG,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Flexible(
                                                  child: Padding(
                                                    padding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                        0, 0, 5, 0),
                                                    child: Text(
                                                      listViewNuevaCitaRecord
                                                          .estado,
                                                      textAlign:
                                                      TextAlign.start,
                                                      style:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .bodyMedium
                                                          .override(
                                                        fontFamily:
                                                        'Lexend Deca',
                                                        color: FlutterFlowTheme.of(
                                                            context)
                                                            .darkBG,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Flexible(
                                                  child: Padding(
                                                    padding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                        0, 0, 5, 0),
                                                    child: Text(
                                                      listViewNuevaCitaRecord
                                                          .segundEstado,
                                                      textAlign:
                                                      TextAlign.start,
                                                      style:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .bodyMedium
                                                          .override(
                                                        fontFamily:
                                                        'Lexend Deca',
                                                        color: FlutterFlowTheme.of(
                                                            context)
                                                            .darkBG,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Flexible(
                                                  child: Padding(
                                                    padding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                        0, 0, 9, 0),
                                                    child: Text(
                                                      listViewNuevaCitaRecord
                                                          .lugar,
                                                      textAlign:
                                                      TextAlign.start,
                                                      style:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .bodyMedium
                                                          .override(
                                                        fontFamily:
                                                        'Lexend Deca',
                                                        color: FlutterFlowTheme.of(
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
                                                    listViewNuevaCitaRecord
                                                        .segundLugar,
                                                    textAlign: TextAlign.start,
                                                    style: FlutterFlowTheme.of(
                                                        context)
                                                        .bodyMedium
                                                        .override(
                                                      fontFamily:
                                                      'Lexend Deca',
                                                      color: FlutterFlowTheme
                                                          .of(context)
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
                                                      locale:
                                                      FFLocalizations.of(
                                                          context)
                                                          .languageCode,
                                                    ),
                                                    textAlign: TextAlign.start,
                                                    style: FlutterFlowTheme.of(
                                                        context)
                                                        .bodyMedium
                                                        .override(
                                                      fontFamily:
                                                      'Lexend Deca',
                                                      color: FlutterFlowTheme
                                                          .of(context)
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
                                                      locale:
                                                      FFLocalizations.of(
                                                          context)
                                                          .languageCode,
                                                    ),
                                                    textAlign: TextAlign.start,
                                                    style: FlutterFlowTheme.of(
                                                        context)
                                                        .bodyMedium
                                                        .override(
                                                      fontFamily:
                                                      'Lexend Deca',
                                                      color: FlutterFlowTheme
                                                          .of(context)
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
                                                          .segundFecha,
                                                      locale:
                                                      FFLocalizations.of(
                                                          context)
                                                          .languageCode,
                                                    ),
                                                    textAlign: TextAlign.start,
                                                    style: FlutterFlowTheme.of(
                                                        context)
                                                        .bodyMedium
                                                        .override(
                                                      fontFamily:
                                                      'Lexend Deca',
                                                      color: FlutterFlowTheme
                                                          .of(context)
                                                          .darkBG,
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  dateTimeFormat(
                                                    'jm',
                                                    listViewNuevaCitaRecord
                                                        .hora,
                                                    locale: FFLocalizations.of(
                                                        context)
                                                        .languageCode,
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
                                                Text(
                                                  dateTimeFormat(
                                                    'jm',
                                                    listViewNuevaCitaRecord
                                                        .segundHora,
                                                    locale: FFLocalizations.of(
                                                        context)
                                                        .languageCode,
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
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-1.05, 0.92),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 30, 0, 0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image.asset(
                                        'assets/images/logo.png',
                                        width: 146,
                                        height: 114,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.83, 0.68),
                                  child: FFButtonWidget(
                                    onPressed: () {
                                      print('BtnReport pressed ...');
                                    },
                                    text: FFLocalizations.of(context).getText(
                                      '5tvoxeqs' /* Generar Reporte */,
                                    ),
                                    options: FFButtonOptions(
                                      height: 40,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          24, 0, 24, 0),
                                      iconPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 0),
                                      color:
                                      FlutterFlowTheme.of(context).primary,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                        fontFamily: 'Lexend Deca',
                                        color: Colors.white,
                                      ),
                                      elevation: 3,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
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
              Align(
                alignment: AlignmentDirectional(0, 1),
                child: Container(
                  width: 396.7,
                  height: 100,
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
                          onPressed: () async {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SolicitudCitasWidget(),
                              ),
                            );
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
                                builder: (context) => MenuAsistenteWidget(),
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
                                builder: (context) => EditarCitasWidget(),
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
