import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BeAwareRecord extends FirestoreRecord {
  BeAwareRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Location" field.
  MarkersStruct? _location;
  MarkersStruct get location => _location ?? MarkersStruct();
  bool hasLocation() => _location != null;

  // "Score" field.
  int? _score;
  int get score => _score ?? 0;
  bool hasScore() => _score != null;

  void _initializeFields() {
    _location = MarkersStruct.maybeFromMap(snapshotData['Location']);
    _score = castToType<int>(snapshotData['Score']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('BeAware');

  static Stream<BeAwareRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BeAwareRecord.fromSnapshot(s));

  static Future<BeAwareRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BeAwareRecord.fromSnapshot(s));

  static BeAwareRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BeAwareRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BeAwareRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BeAwareRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BeAwareRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BeAwareRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBeAwareRecordData({
  MarkersStruct? location,
  int? score,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Location': MarkersStruct().toMap(),
      'Score': score,
    }.withoutNulls,
  );

  // Handle nested data for "Location" field.
  addMarkersStructData(firestoreData, location, 'Location');

  return firestoreData;
}

class BeAwareRecordDocumentEquality implements Equality<BeAwareRecord> {
  const BeAwareRecordDocumentEquality();

  @override
  bool equals(BeAwareRecord? e1, BeAwareRecord? e2) {
    return e1?.location == e2?.location && e1?.score == e2?.score;
  }

  @override
  int hash(BeAwareRecord? e) =>
      const ListEquality().hash([e?.location, e?.score]);

  @override
  bool isValidKey(Object? o) => o is BeAwareRecord;
}
