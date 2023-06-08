import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LugarCitaRecord extends FirestoreRecord {
  LugarCitaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nombreLugar" field.
  String? _nombreLugar;
  String get nombreLugar => _nombreLugar ?? '';
  bool hasNombreLugar() => _nombreLugar != null;

  void _initializeFields() {
    _nombreLugar = snapshotData['nombreLugar'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('lugarCita');

  static Stream<LugarCitaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LugarCitaRecord.fromSnapshot(s));

  static Future<LugarCitaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LugarCitaRecord.fromSnapshot(s));

  static LugarCitaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      LugarCitaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LugarCitaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LugarCitaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LugarCitaRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createLugarCitaRecordData({
  String? nombreLugar,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombreLugar': nombreLugar,
    }.withoutNulls,
  );

  return firestoreData;
}
