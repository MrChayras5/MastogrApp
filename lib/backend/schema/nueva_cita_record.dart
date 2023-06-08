import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NuevaCitaRecord extends FirestoreRecord {
  NuevaCitaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "telefono" field.
  double? _telefono;
  double get telefono => _telefono ?? 0.0;
  bool hasTelefono() => _telefono != null;

  // "curpNss" field.
  String? _curpNss;
  String get curpNss => _curpNss ?? '';
  bool hasCurpNss() => _curpNss != null;

  // "estudio" field.
  String? _estudio;
  String get estudio => _estudio ?? '';
  bool hasEstudio() => _estudio != null;

  // "estado" field.
  String? _estado;
  String get estado => _estado ?? '';
  bool hasEstado() => _estado != null;

  // "lugar" field.
  String? _lugar;
  String get lugar => _lugar ?? '';
  bool hasLugar() => _lugar != null;

  // "fecha" field.
  DateTime? _fecha;
  DateTime? get fecha => _fecha;
  bool hasFecha() => _fecha != null;

  // "userID" field.
  DocumentReference? _userID;
  DocumentReference? get userID => _userID;
  bool hasUserID() => _userID != null;

  // "motivoCambio" field.
  String? _motivoCambio;
  String get motivoCambio => _motivoCambio ?? '';
  bool hasMotivoCambio() => _motivoCambio != null;

  // "isAsistent" field.
  bool? _isAsistent;
  bool get isAsistent => _isAsistent ?? false;
  bool hasIsAsistent() => _isAsistent != null;

  // "idAutorizar" field.
  bool? _idAutorizar;
  bool get idAutorizar => _idAutorizar ?? false;
  bool hasIdAutorizar() => _idAutorizar != null;

  // "idEdit" field.
  bool? _idEdit;
  bool get idEdit => _idEdit ?? false;
  bool hasIdEdit() => _idEdit != null;

  // "hora" field.
  DateTime? _hora;
  DateTime? get hora => _hora;
  bool hasHora() => _hora != null;

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
    _telefono = castToType<double>(snapshotData['telefono']);
    _curpNss = snapshotData['curpNss'] as String?;
    _estudio = snapshotData['estudio'] as String?;
    _estado = snapshotData['estado'] as String?;
    _lugar = snapshotData['lugar'] as String?;
    _fecha = snapshotData['fecha'] as DateTime?;
    _userID = snapshotData['userID'] as DocumentReference?;
    _motivoCambio = snapshotData['motivoCambio'] as String?;
    _isAsistent = snapshotData['isAsistent'] as bool?;
    _idAutorizar = snapshotData['idAutorizar'] as bool?;
    _idEdit = snapshotData['idEdit'] as bool?;
    _hora = snapshotData['hora'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('NuevaCita');

  static Stream<NuevaCitaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NuevaCitaRecord.fromSnapshot(s));

  static Future<NuevaCitaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NuevaCitaRecord.fromSnapshot(s));

  static NuevaCitaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      NuevaCitaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NuevaCitaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NuevaCitaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NuevaCitaRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createNuevaCitaRecordData({
  String? nombre,
  double? telefono,
  String? curpNss,
  String? estudio,
  String? estado,
  String? lugar,
  DateTime? fecha,
  DocumentReference? userID,
  String? motivoCambio,
  bool? isAsistent,
  bool? idAutorizar,
  bool? idEdit,
  DateTime? hora,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
      'telefono': telefono,
      'curpNss': curpNss,
      'estudio': estudio,
      'estado': estado,
      'lugar': lugar,
      'fecha': fecha,
      'userID': userID,
      'motivoCambio': motivoCambio,
      'isAsistent': isAsistent,
      'idAutorizar': idAutorizar,
      'idEdit': idEdit,
      'hora': hora,
    }.withoutNulls,
  );

  return firestoreData;
}
