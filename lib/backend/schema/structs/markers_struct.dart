// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MarkersStruct extends FFFirebaseStruct {
  MarkersStruct({
    String? geohash,
    LatLng? geopoint,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _geohash = geohash,
        _geopoint = geopoint,
        super(firestoreUtilData);

  // "geohash" field.
  String? _geohash;
  String get geohash => _geohash ?? '';
  set geohash(String? val) => _geohash = val;
  bool hasGeohash() => _geohash != null;

  // "geopoint" field.
  LatLng? _geopoint;
  LatLng? get geopoint => _geopoint;
  set geopoint(LatLng? val) => _geopoint = val;
  bool hasGeopoint() => _geopoint != null;

  static MarkersStruct fromMap(Map<String, dynamic> data) => MarkersStruct(
        geohash: data['geohash'] as String?,
        geopoint: data['geopoint'] as LatLng?,
      );

  static MarkersStruct? maybeFromMap(dynamic data) =>
      data is Map ? MarkersStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'geohash': _geohash,
        'geopoint': _geopoint,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'geohash': serializeParam(
          _geohash,
          ParamType.String,
        ),
        'geopoint': serializeParam(
          _geopoint,
          ParamType.LatLng,
        ),
      }.withoutNulls;

  static MarkersStruct fromSerializableMap(Map<String, dynamic> data) =>
      MarkersStruct(
        geohash: deserializeParam(
          data['geohash'],
          ParamType.String,
          false,
        ),
        geopoint: deserializeParam(
          data['geopoint'],
          ParamType.LatLng,
          false,
        ),
      );

  @override
  String toString() => 'MarkersStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MarkersStruct &&
        geohash == other.geohash &&
        geopoint == other.geopoint;
  }

  @override
  int get hashCode => const ListEquality().hash([geohash, geopoint]);
}

MarkersStruct createMarkersStruct({
  String? geohash,
  LatLng? geopoint,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    MarkersStruct(
      geohash: geohash,
      geopoint: geopoint,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

MarkersStruct? updateMarkersStruct(
  MarkersStruct? markers, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    markers
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addMarkersStructData(
  Map<String, dynamic> firestoreData,
  MarkersStruct? markers,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (markers == null) {
    return;
  }
  if (markers.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && markers.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final markersData = getMarkersFirestoreData(markers, forFieldValue);
  final nestedData = markersData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = markers.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getMarkersFirestoreData(
  MarkersStruct? markers, [
  bool forFieldValue = false,
]) {
  if (markers == null) {
    return {};
  }
  final firestoreData = mapToFirestore(markers.toMap());

  // Add any Firestore field values
  markers.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getMarkersListFirestoreData(
  List<MarkersStruct>? markerss,
) =>
    markerss?.map((e) => getMarkersFirestoreData(e, true)).toList() ?? [];
