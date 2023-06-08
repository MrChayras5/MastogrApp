import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EstadoRecord extends FirestoreRecord {
  EstadoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nombreEstado" field.
  String? _nombreEstado;
  String get nombreEstado => _nombreEstado ?? '';
  bool hasNombreEstado() => _nombreEstado != null;

  void _initializeFields() {
    _nombreEstado = snapshotData['nombreEstado'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('estado');

  static Stream<EstadoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EstadoRecord.fromSnapshot(s));

  static Future<EstadoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EstadoRecord.fromSnapshot(s));

  static EstadoRecord fromSnapshot(DocumentSnapshot snapshot) => EstadoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EstadoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EstadoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EstadoRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createEstadoRecordData({
  String? nombreEstado,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombreEstado': nombreEstado,
    }.withoutNulls,
  );

  return firestoreData;
}
