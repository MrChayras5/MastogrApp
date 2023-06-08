import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/editar_citas/editar_citas_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/menu_asistente/menu_asistente_widget.dart';
import '/solicitud_citas/solicitud_citas_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'editar_datos_citas_model.dart';
export 'editar_datos_citas_model.dart';

class EditarDatosCitasWidget extends StatefulWidget {
  const EditarDatosCitasWidget({
    Key? key,
    required this.idc,
  }) : super(key: key);

  final DocumentReference? idc;

  @override
  _EditarDatosCitasWidgetState createState() => _EditarDatosCitasWidgetState();
}

class _EditarDatosCitasWidgetState extends State<EditarDatosCitasWidget> {
  late EditarDatosCitasModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EditarDatosCitasModel());

    _model.textController ??= TextEditingController();
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
                't2ri0zpg' /* Editar citas */,
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
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 20.0, 0.0, 10.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-0.77, -0.93),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20.0, 0.0, 10.0, 0.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'ndllm6x2' /* Actualiza los siguiente datos: */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        fontSize: 20.0,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.96, -0.97),
                                  child: Image.asset(
                                    'assets/images/logo.png',
                                    width: 56.4,
                                    height: 60.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 30.0, 0.0, 0.0),
                            child: StreamBuilder<List<LugarCitaRecord>>(
                              stream: queryLugarCitaRecord(),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 50.0,
                                      height: 50.0,
                                      child: CircularProgressIndicator(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                      ),
                                    ),
                                  );
                                }
                                List<LugarCitaRecord>
                                lugarDropDownLugarCitaRecordList =
                                snapshot.data!;
                                return FlutterFlowDropDown<String>(
                                  controller:
                                  _model.lugarDropDownValueController ??=
                                      FormFieldController<String>(null),
                                  options: lugarDropDownLugarCitaRecordList
                                      .map((e) => e.nombreLugar)
                                      .toList(),
                                  onChanged: (val) => setState(
                                          () => _model.lugarDropDownValue = val),
                                  width: 171.0,
                                  height: 50.0,
                                  searchHintTextStyle:
                                  FlutterFlowTheme.of(context).titleSmall,
                                  textStyle:
                                  FlutterFlowTheme.of(context).titleSmall,
                                  hintText: FFLocalizations.of(context).getText(
                                    'sgwmdzzn' /* Lugar... */,
                                  ),
                                  searchHintText:
                                  FFLocalizations.of(context).getText(
                                    'ar5t6r9r' /* Search for an item... */,
                                  ),
                                  fillColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  elevation: 2.0,
                                  borderColor: Colors.transparent,
                                  borderWidth: 0.0,
                                  borderRadius: 0.0,
                                  margin: EdgeInsetsDirectional.fromSTEB(
                                      12.0, 4.0, 12.0, 4.0),
                                  hidesUnderline: true,
                                  isSearchable: false,
                                );
                              },
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 30.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FFButtonWidget(
                                  onPressed: () async {
                                    final _datePicked1Date =
                                    await showDatePicker(
                                      context: context,
                                      initialDate: getCurrentTimestamp,
                                      firstDate: getCurrentTimestamp,
                                      lastDate: DateTime(2050),
                                    );

                                    if (_datePicked1Date != null) {
                                      setState(() {
                                        _model.datePicked1 = DateTime(
                                          _datePicked1Date.year,
                                          _datePicked1Date.month,
                                          _datePicked1Date.day,
                                        );
                                      });
                                    }
                                  },
                                  text: FFLocalizations.of(context).getText(
                                    'a5si7j8b' /* Fecha */,
                                  ),
                                  icon: Icon(
                                    Icons.calendar_today,
                                    size: 15.0,
                                  ),
                                  options: FFButtonOptions(
                                    width: 113.0,
                                    height: 40.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: Color(0xFFEC7484),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
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
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      40.0, 0.0, 0.0, 0.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      final _datePicked2Time =
                                      await showTimePicker(
                                        context: context,
                                        initialTime: TimeOfDay.fromDateTime(
                                            getCurrentTimestamp),
                                      );
                                      if (_datePicked2Time != null) {
                                        setState(() {
                                          _model.datePicked2 = DateTime(
                                            getCurrentTimestamp.year,
                                            getCurrentTimestamp.month,
                                            getCurrentTimestamp.day,
                                            _datePicked2Time.hour,
                                            _datePicked2Time.minute,
                                          );
                                        });
                                      }
                                    },
                                    text: FFLocalizations.of(context).getText(
                                      '7fwahmjq' /* Hora */,
                                    ),
                                    icon: Icon(
                                      Icons.schedule_outlined,
                                      size: 15.0,
                                    ),
                                    options: FFButtonOptions(
                                      width: 113.0,
                                      height: 40.0,
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
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                15.0, 30.0, 0.0, 0.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'fh6w4xlg' /* Motivo de cambio: */,
                              ),
                              style: FlutterFlowTheme.of(context).titleMedium,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                25.0, 0.0, 0.0, 0.0),
                            child: Container(
                              width: 275.0,
                              decoration: BoxDecoration(),
                              child: TextFormField(
                                controller: _model.textController,
                                autofocus: true,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText:
                                  FFLocalizations.of(context).getText(
                                    'bydb1cdd' /* Motivo de cambio... */,
                                  ),
                                  labelStyle:
                                  FlutterFlowTheme.of(context).labelMedium,
                                  hintStyle:
                                  FlutterFlowTheme.of(context).labelMedium,
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color:
                                      FlutterFlowTheme.of(context).primary,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  contentPadding:
                                  EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 0.0, 180.0),
                                ),
                                style: FlutterFlowTheme.of(context).titleSmall,
                                validator: _model.textControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                35.0, 35.0, 0.0, 0.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                var confirmDialogResponse = await showDialog<
                                    bool>(
                                  context: context,
                                  builder: (alertDialogContext) {
                                    return AlertDialog(
                                      title: Text('Confirmar datos'),
                                      content:
                                      Text('${'Fecha: ${dateTimeFormat(
                                        'yMd',
                                        _model.datePicked1,
                                        locale: FFLocalizations.of(context)
                                            .languageCode,
                                      )} Hora:${dateTimeFormat(
                                        'jm',
                                        _model.datePicked2,
                                        locale: FFLocalizations.of(context)
                                            .languageCode,
                                      )}'}${'Lugar: ${_model.lugarDropDownValue}'}${'Motivo del cambio: ${_model.textController.text}'}'),
                                      actions: [
                                        TextButton(
                                          onPressed: () => Navigator.pop(
                                              alertDialogContext, false),
                                          child: Text('Cancelar'),
                                        ),
                                        TextButton(
                                          onPressed: () => Navigator.pop(
                                              alertDialogContext, true),
                                          child: Text('Confirmar'),
                                        ),
                                      ],
                                    );
                                  },
                                ) ??
                                    false;

                                final nuevaCitaUpdateData =
                                createNuevaCitaRecordData(
                                  motivoCambio: _model.textController.text,
                                  fecha: _model.datePicked1,
                                  lugar: valueOrDefault<String>(
                                    _model.lugarDropDownValue,
                                    'AquivaElLugar',
                                  ),
                                  idEdit: true,
                                  hora: _model.datePicked2,
                                );
                                await widget.idc!.update(nuevaCitaUpdateData);
                                await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => EditarCitasWidget(),
                                  ),
                                );
                              },
                              text: FFLocalizations.of(context).getText(
                                'da37immm' /* Actualizar */,
                              ),
                              options: FFButtonOptions(
                                height: 40.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    24.0, 0.0, 24.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).primary,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                  fontFamily: 'Lexend Deca',
                                  color: Colors.white,
                                ),
                                elevation: 3.0,
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
                    ],
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
                          onPressed: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SolicitudCitasWidget(),
                              ),
                            );
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
                                builder: (context) => MenuAsistenteWidget(),
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
                            await Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) => EditarCitasWidget(),
                              ),
                                  (r) => false,
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
