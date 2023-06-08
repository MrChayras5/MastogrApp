import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/menu_paciente/menu_paciente_widget.dart';
import '/mis_citas/mis_citas_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'mi_nueva_cita_model.dart';
export 'mi_nueva_cita_model.dart';

class MiNuevaCitaWidget extends StatefulWidget {
  const MiNuevaCitaWidget({Key? key}) : super(key: key);

  @override
  _MiNuevaCitaWidgetState createState() => _MiNuevaCitaWidgetState();
}

class _MiNuevaCitaWidgetState extends State<MiNuevaCitaWidget> {
  late MiNuevaCitaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MiNuevaCitaModel());

    _model.nombreTextFieldController ??= TextEditingController();
    _model.telefonoTextFieldController ??= TextEditingController();
    _model.curpNssTextFieldController ??= TextEditingController();
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<NuevaCitaRecord>>(
      stream: queryNuevaCitaRecord(
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  color: FlutterFlowTheme.of(context).primary,
                ),
              ),
            ),
          );
        }
        List<NuevaCitaRecord> miNuevaCitaNuevaCitaRecordList = snapshot.data!;
        // Return an empty Container when the item does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final miNuevaCitaNuevaCitaRecord =
        miNuevaCitaNuevaCitaRecordList.isNotEmpty
            ? miNuevaCitaNuevaCitaRecordList.first
            : null;
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
                    '9wz2sugx' /* Nueva cita */,
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
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding:
                      EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 10.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-0.77, -0.93),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 10.0, 0.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'v1qpqw7o' /* Ingrese los siguiente datos: */,
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
                          Form(
                            key: _model.formKey,
                            autovalidateMode: AutovalidateMode.disabled,
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                TextFormField(
                                  controller: _model.nombreTextFieldController,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText:
                                    FFLocalizations.of(context).getText(
                                      'g8qk878e' /* Nombre */,
                                    ),
                                    hintStyle:
                                    FlutterFlowTheme.of(context).bodySmall,
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1.0,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1.0,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1.0,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1.0,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    prefixIcon: Icon(
                                      Icons.account_box,
                                    ),
                                  ),
                                  style:
                                  FlutterFlowTheme.of(context).titleSmall,
                                  textAlign: TextAlign.start,
                                  validator: _model
                                      .nombreTextFieldControllerValidator
                                      .asValidator(context),
                                ),
                                TextFormField(
                                  controller:
                                  _model.telefonoTextFieldController,
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    hintText:
                                    FFLocalizations.of(context).getText(
                                      'teih622o' /* Teléfono */,
                                    ),
                                    hintStyle:
                                    FlutterFlowTheme.of(context).bodySmall,
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1.0,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1.0,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1.0,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1.0,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    prefixIcon: Icon(
                                      Icons.call,
                                    ),
                                  ),
                                  style:
                                  FlutterFlowTheme.of(context).titleSmall,
                                  textAlign: TextAlign.start,
                                  validator: _model
                                      .telefonoTextFieldControllerValidator
                                      .asValidator(context),
                                ),
                                TextFormField(
                                  controller: _model.curpNssTextFieldController,
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    hintText:
                                    FFLocalizations.of(context).getText(
                                      'iz965mcf' /* CURP o NSS (opcional) */,
                                    ),
                                    hintStyle:
                                    FlutterFlowTheme.of(context).bodySmall,
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1.0,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1.0,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1.0,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1.0,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    prefixIcon: Icon(
                                      Icons.contact_page_rounded,
                                    ),
                                  ),
                                  style:
                                  FlutterFlowTheme.of(context).titleSmall,
                                  textAlign: TextAlign.start,
                                  validator: _model
                                      .curpNssTextFieldControllerValidator
                                      .asValidator(context),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 20.0, 0.0, 10.0),
                            child: StreamBuilder<List<EstudioRecord>>(
                              stream: queryEstudioRecord(),
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
                                List<EstudioRecord>
                                estudioDropDownEstudioRecordList =
                                snapshot.data!;
                                return FlutterFlowDropDown<String>(
                                  controller:
                                  _model.estudioDropDownValueController ??=
                                      FormFieldController<String>(null),
                                  options: estudioDropDownEstudioRecordList
                                      .map((e) => e.nombreEstudio)
                                      .toList(),
                                  onChanged: (val) => setState(
                                          () => _model.estudioDropDownValue = val),
                                  width: 180.0,
                                  height: 50.0,
                                  searchHintTextStyle:
                                  FlutterFlowTheme.of(context).titleSmall,
                                  textStyle:
                                  FlutterFlowTheme.of(context).titleSmall,
                                  hintText: FFLocalizations.of(context).getText(
                                    'deid47sd' /* Estudio... */,
                                  ),
                                  searchHintText:
                                  FFLocalizations.of(context).getText(
                                    's5scryv5' /* Search for an item... */,
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
                          if (_model.estudioDropDownValue != null &&
                              _model.estudioDropDownValue != '')
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 10.0),
                              child: StreamBuilder<List<EstadoRecord>>(
                                stream: queryEstadoRecord(),
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
                                  List<EstadoRecord>
                                  estadoDropDownEstadoRecordList =
                                  snapshot.data!;
                                  return FlutterFlowDropDown<String>(
                                    controller:
                                    _model.estadoDropDownValueController ??=
                                        FormFieldController<String>(null),
                                    options: estadoDropDownEstadoRecordList
                                        .map((e) => e.nombreEstado)
                                        .toList(),
                                    onChanged: (val) => setState(
                                            () => _model.estadoDropDownValue = val),
                                    width: 180.0,
                                    height: 50.0,
                                    searchHintTextStyle:
                                    FlutterFlowTheme.of(context).titleSmall,
                                    textStyle:
                                    FlutterFlowTheme.of(context).titleSmall,
                                    hintText:
                                    FFLocalizations.of(context).getText(
                                      'oh6g89yj' /* Estado... */,
                                    ),
                                    searchHintText:
                                    FFLocalizations.of(context).getText(
                                      'cbc1y8rr' /* Search for an item... */,
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
                          if (_model.estadoDropDownValue != null &&
                              _model.estadoDropDownValue != '')
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 15.0),
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
                                    width: 180.0,
                                    height: 50.0,
                                    searchHintTextStyle:
                                    FlutterFlowTheme.of(context).titleSmall,
                                    textStyle:
                                    FlutterFlowTheme.of(context).titleSmall,
                                    hintText:
                                    FFLocalizations.of(context).getText(
                                      'hcefh11a' /* Lugar... */,
                                    ),
                                    searchHintText:
                                    FFLocalizations.of(context).getText(
                                      '7i7cop6i' /* Search for an item... */,
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
                                0.0, 20.0, 0.0, 0.0),
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
                                    '5nc8bgjv' /* Fecha */,
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
                                      'q6mdw62b' /* Hora */,
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
                                0.0, 50.0, 0.0, 0.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                if (_model.formKey.currentState == null ||
                                    !_model.formKey.currentState!.validate()) {
                                  return;
                                }
                                var confirmDialogResponse = await showDialog<
                                    bool>(
                                  context: context,
                                  builder: (alertDialogContext) {
                                    return AlertDialog(
                                      title: Text('Confirmar datos'),
                                      content: Text(
                                          '${'Elección de estudio: ${_model.estudioDropDownValue} '}${'Fecha:${dateTimeFormat(
                                            'yMd',
                                            _model.datePicked1,
                                            locale: FFLocalizations.of(context)
                                                .languageCode,
                                          )} Hora:${dateTimeFormat(
                                            'jm',
                                            _model.datePicked2,
                                            locale: FFLocalizations.of(context)
                                                .languageCode,
                                          )}'}${'Lugar: ${_model.lugarDropDownValue}'}'),
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

                                final nuevaCitaCreateData =
                                createNuevaCitaRecordData(
                                  nombre: _model.nombreTextFieldController.text,
                                  telefono: double.tryParse(
                                      _model.telefonoTextFieldController.text),
                                  curpNss:
                                  _model.curpNssTextFieldController.text,
                                  estudio: _model.estudioDropDownValue,
                                  estado: _model.estadoDropDownValue,
                                  lugar: _model.lugarDropDownValue,
                                  fecha: _model.datePicked1,
                                  userID: currentUserReference,
                                  motivoCambio: 'MotivoDeCambio',
                                  idAutorizar: false,
                                  isAsistent: false,
                                  idEdit: false,
                                  hora: _model.datePicked2,
                                );
                                await NuevaCitaRecord.collection
                                    .doc()
                                    .set(nuevaCitaCreateData);
                                await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => MiNuevaCitaWidget(),
                                  ),
                                );
                              },
                              text: FFLocalizations.of(context).getText(
                                'e6szfko4' /* Continuar */,
                              ),
                              options: FFButtonOptions(
                                width: 285.0,
                                height: 37.7,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).primary,
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
                            padding: EdgeInsetsDirectional.fromSTEB(
                                40.0, 0.0, 0.0, 0.0),
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
                                    builder: (context) => MisCitasWidget(),
                                  ),
                                );
                              },
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                65.0, 0.0, 0.0, 0.0),
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
                            padding: EdgeInsetsDirectional.fromSTEB(
                                70.0, 0.0, 0.0, 0.0),
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
                              onPressed: () {
                                print('IconButton pressed ...');
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
      },
    );
  }
}