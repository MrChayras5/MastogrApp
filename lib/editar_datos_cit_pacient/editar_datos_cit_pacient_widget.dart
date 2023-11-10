import 'package:MastogrApp/editar_citas_pacient/editar_citas_pacient_widget.dart';
import 'package:MastogrApp/index.dart';

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

import 'editar_datos_cit_pacient_model.dart';
export 'editar_datos_cit_pacient_model.dart';


class EditarDatosCitPacintWidget extends StatefulWidget {
  const EditarDatosCitPacintWidget({
    Key? key,
    required this.idcitaEdit,
  }) : super(key: key);

  final DocumentReference? idcitaEdit;

  @override
  _EditarDatosCitPacintWidgetState createState() =>
      _EditarDatosCitPacintWidgetState();
}

class _EditarDatosCitPacintWidgetState
    extends State<EditarDatosCitPacintWidget> {
  late EditarDatosCitPacientModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EditarDatosCitPacientModel());

    _model.textController ??= TextEditingController();
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
        //evitar que el menu se eleve con el teclado
        resizeToAvoidBottomInset: false, // Evita que el contenido se eleve con el teclado
        //
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: Color(0xFFEC7484),
          automaticallyImplyLeading: true,
          title: Align(
            alignment: AlignmentDirectional(-0.85, -0.25),
            child: Text(
              FFLocalizations.of(context).getText(
                'dcr9gl3y' /* Editar cita */,
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
                            padding:
                            EdgeInsetsDirectional.fromSTEB(0, 20, 0, 5),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-0.77, -0.93),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        50, 0, 10, 0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'sgdj38r9' /* Actualiza los siguiente datos: */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        fontSize: 17,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.96, -0.97),
                                  child: Image.asset(
                                    'assets/images/logo.png',
                                    width: 56.4,
                                    height: 60,
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
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      15, 30, 0, 10),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'xeq7lctr' /* Motivo de cambio: */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .titleMedium,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      25, 0, 0, 0),
                                    child: SingleChildScrollView( // Agregamos un SingleChildScrollView aquí
                                      scrollDirection: Axis.vertical,
                                  child: Container(
                                    width: 275,
                                    height: 120,
                                    decoration: BoxDecoration(),
                                    child: TextFormField(
                                      controller: _model.textController,
                                      focusNode: _model.textFieldFocusNode,
                                      autofocus: false,
                                      obscureText: false,
                                      maxLines: null,
                                      keyboardType: TextInputType.multiline,
                                      decoration: InputDecoration(
                                        labelText:
                                        FFLocalizations.of(context).getText(
                                          '6ny5mmfr' /* Motivo de cambio... */,
                                        ),
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium,
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium,
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            width: 2,
                                          ),
                                          borderRadius: BorderRadius.circular(8),
                                        ),

                                      ),
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Lexend Deca',
                                      fontSize: 16,
                                    ),

                                    validator: _model.textControllerValidator.asValidator(context),
                                  ),
                                    ),
                                ),
      ),

        Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20, 20, 0, 10),
                                  child: StreamBuilder<List<EstudioRecord>>(
                                    stream: queryEstudioRecord(),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50,
                                            height: 50,
                                            child: CircularProgressIndicator(
                                              valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                              ),
                                            ),
                                          ),
                                        );
                                      }
                                      List<EstudioRecord>
                                      estudioDropDownEstudioRecordList =
                                      snapshot.data!;
                                      return FlutterFlowDropDown<String>(
                                        controller: _model
                                            .estudioDropDownValueController ??=
                                            FormFieldController<String>(null),
                                        options:
                                        estudioDropDownEstudioRecordList
                                            .map((e) => e.nombreEstudio)
                                            .toList(),
                                        onChanged: (val) => setState(() =>
                                        _model.estudioDropDownValue = val),
                                        width: 180,
                                        height: 50,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall,
                                        hintText:
                                        FFLocalizations.of(context).getText(
                                          'dfau6xyj' /* Estudio... */,
                                        ),
                                        fillColor: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        elevation: 2,
                                        borderColor: Colors.transparent,
                                        borderWidth: 0,
                                        borderRadius: 0,
                                        margin: EdgeInsetsDirectional.fromSTEB(
                                            12, 4, 12, 4),
                                        hidesUnderline: true,
                                        isSearchable: false,
                                        isMultiSelect: false,
                                      );
                                    },
                                  ),
                                ),
                                if (_model.estudioDropDownValue != null &&
                                    _model.estudioDropDownValue != '')
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20, 0, 0, 10),
                                    child: StreamBuilder<List<EstadoRecord>>(
                                      stream: queryEstadoRecord(),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50,
                                              height: 50,
                                              child: CircularProgressIndicator(
                                                valueColor:
                                                AlwaysStoppedAnimation<
                                                    Color>(
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        List<EstadoRecord>
                                        estadoDropDownEstadoRecordList =
                                        snapshot.data!;
                                        return FlutterFlowDropDown<String>(
                                          controller: _model
                                              .estadoDropDownValueController ??=
                                              FormFieldController<String>(null),
                                          options:
                                          estadoDropDownEstadoRecordList
                                              .map((e) => e.nombreEstado)
                                              .toList(),
                                          onChanged: (val) => setState(() =>
                                          _model.estadoDropDownValue = val),
                                          width: 180,
                                          height: 50,
                                          textStyle:
                                          FlutterFlowTheme.of(context)
                                              .titleSmall,
                                          hintText: FFLocalizations.of(context)
                                              .getText(
                                            'w6i69sr4' /* Estado... */,
                                          ),
                                          fillColor:
                                          FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          elevation: 2,
                                          borderColor: Colors.transparent,
                                          borderWidth: 0,
                                          borderRadius: 0,
                                          margin:
                                          EdgeInsetsDirectional.fromSTEB(
                                              12, 4, 12, 4),
                                          hidesUnderline: true,
                                          isSearchable: false,
                                          isMultiSelect: false,
                                        );
                                      },
                                    ),
                                  ),
                                if (_model.estadoDropDownValue != null &&
                                    _model.estadoDropDownValue != '')
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20, 0, 0, 0),
                                    child: StreamBuilder<List<LugarCitaRecord>>(
                                      stream: queryLugarCitaRecord(),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50,
                                              height: 50,
                                              child: CircularProgressIndicator(
                                                valueColor:
                                                AlwaysStoppedAnimation<
                                                    Color>(
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        List<LugarCitaRecord>
                                        lugarDropDownLugarCitaRecordList =
                                        snapshot.data!;
                                        return FlutterFlowDropDown<String>(
                                          controller: _model
                                              .lugarDropDownValueController ??=
                                              FormFieldController<String>(null),
                                          options:
                                          lugarDropDownLugarCitaRecordList
                                              .map((e) => e.nombreLugar)
                                              .toList(),
                                          onChanged: (val) => setState(() =>
                                          _model.lugarDropDownValue = val),
                                          width: 180,
                                          height: 50,
                                          textStyle:
                                          FlutterFlowTheme.of(context)
                                              .titleSmall,
                                          hintText: FFLocalizations.of(context)
                                              .getText(
                                            'ytb7mj0t' /* Lugar... */,
                                          ),
                                          fillColor:
                                          FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          elevation: 2,
                                          borderColor: Colors.transparent,
                                          borderWidth: 0,
                                          borderRadius: 0,
                                          margin:
                                          EdgeInsetsDirectional.fromSTEB(
                                              12, 4, 12, 4),
                                          hidesUnderline: true,
                                          isSearchable: false,
                                          isMultiSelect: false,
                                        );
                                      },
                                    ),
                                  ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                            EdgeInsetsDirectional.fromSTEB(25, 30, 0, 0),
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
                                    'rat5kes5' /* Fecha */,
                                  ),
                                  icon: Icon(
                                    Icons.calendar_today,
                                    size: 15,
                                  ),
                                  options: FFButtonOptions(
                                    width: 113,
                                    height: 50,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 0),
                                    color: Color(0xFFEC7484),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                      fontFamily: 'Lexend Deca',
                                      color: Colors.white,
                                    ),
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      40, 0, 0, 0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      final _datePicked2Time =
                                      await showTimePicker(
                                        context: context,
                                        initialTime: TimeOfDay.fromDateTime(
                                            getCurrentTimestamp),
                                      );
                                      if (_datePicked2Time != null) {
                                        if (_datePicked2Time.hour >= 7 && _datePicked2Time.hour <= 18) {
                                          setState(() {
                                            _model.datePicked2 = DateTime(
                                              getCurrentTimestamp.year,
                                              getCurrentTimestamp.month,
                                              getCurrentTimestamp.day,
                                              _datePicked2Time.hour,
                                              _datePicked2Time.minute,
                                            );
                                          });
                                        } else {
                                          // Mostrar un mensaje de error al usuario si la hora está fuera del rango.
                                          showDialog(
                                            context: context,
                                            builder: (context) {
                                              return AlertDialog(
                                                title: Text('Error'),
                                                content: Text('Por favor, seleccione una hora entre las 9 am y las 6 pm.'),
                                                actions: <Widget>[
                                                  TextButton(
                                                    onPressed: () {
                                                      Navigator.of(context).pop();
                                                    },
                                                    child: Text('Cerrar'),
                                                  ),
                                                ],
                                              );
                                            },
                                          );
                                        }
                                      }
                                    },
                                    text: FFLocalizations.of(context).getText(
                                      '3hd17ml1' /* Hora */,
                                    ),
                                    icon: Icon(
                                      Icons.schedule_outlined,
                                      size: 15,
                                    ),
                                    options: FFButtonOptions(
                                      width: 113,
                                      height: 50,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 0),
                                      iconPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 0),
                                      color: Color(0xFFEC7484),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                        fontFamily: 'Lexend Deca',
                                        color: Colors.white,
                                      ),
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



                          Padding(
                            padding:
                            EdgeInsetsDirectional.fromSTEB(30, 30, 0, 0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                if (_model.formKey.currentState == null ||
                                    !_model.formKey.currentState!.validate()) {
                                 return;
                                }
                                if (_model.estudioDropDownValue == null) {
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return AlertDialog(
                                        title: Text('Alerta'),
                                        content: Text('Seleccione el Esudisaso'),
                                        actions: [
                                          TextButton(
                                            onPressed: () => Navigator.pop(alertDialogContext),
                                            child: Text('Ok'),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                  return;
                                }
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
                                if(confirmDialogResponse) {
    await widget.idcitaEdit!
        .update(createNuevaCitaRecordData(

    //cambio
    segundFecha: _model.datePicked1,
    segundHora: _model.datePicked2,
    //cambio
    segundLugar: valueOrDefault<String>(
    _model.lugarDropDownValue,
    'AquivaElLugar',
    ),
    //cambio Estadow
    segundEstado: valueOrDefault<String>(
    _model.estadoDropDownValue,
    'AquiVaEstado',
    ),
    //cambio Estudio
    segundEstudi: valueOrDefault<String>(
    _model.estudioDropDownValue,
    'AquiVaEstudiod',
    ),

    //cambio
    idPeticion: true,
    idEdit: true,
    idAutorizar: false,

    //cambio


    ));
    Navigator.push(
    context,
    MaterialPageRoute(
    builder: (context) => EditarCitasPacientWidget(),
    ),
    );
    }
    },
                                text: FFLocalizations.of(context).getText(
                                'rwod3s3s' /* Actualizar */,
                                ),
                                options: FFButtonOptions(
                                height: 50,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                24, 0, 24, 0),
                                iconPadding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                                color: FlutterFlowTheme.of(context).primary,
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
  }
}
