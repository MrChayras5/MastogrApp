import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EstudioRecord extends FirestoreRecord {
  EstudioRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nombreEstudio" field.
  String? _nombreEstudio;
  String get nombreEstudio => _nombreEstudio ?? '';
  bool hasNombreEstudio() => _nombreEstudio != null;

  void _initializeFields() {
    _nombreEstudio = snapshotData['nombreEstudio'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('estudio');

  static Stream<EstudioRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EstudioRecord.fromSnapshot(s));

  static Future<EstudioRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EstudioRecord.fromSnapshot(s));

  static EstudioRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EstudioRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EstudioRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EstudioRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EstudioRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createEstudioRecordData({
  String? nombreEstudio,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombreEstudio': nombreEstudio,
    }.withoutNulls,
  );

  return firestoreData;
}
