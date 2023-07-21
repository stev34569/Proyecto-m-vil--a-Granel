// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PesoStruct extends FFFirebaseStruct {
  PesoStruct({
    double? peso,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _peso = peso,
        super(firestoreUtilData);

  // "peso" field.
  double? _peso;
  double get peso => _peso ?? 0.0;
  set peso(double? val) => _peso = val;
  void incrementPeso(double amount) => _peso = peso + amount;
  bool hasPeso() => _peso != null;

  static PesoStruct fromMap(Map<String, dynamic> data) => PesoStruct(
        peso: castToType<double>(data['peso']),
      );

  static PesoStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? PesoStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'peso': _peso,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'peso': serializeParam(
          _peso,
          ParamType.double,
        ),
      }.withoutNulls;

  static PesoStruct fromSerializableMap(Map<String, dynamic> data) =>
      PesoStruct(
        peso: deserializeParam(
          data['peso'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'PesoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PesoStruct && peso == other.peso;
  }

  @override
  int get hashCode => const ListEquality().hash([peso]);
}

PesoStruct createPesoStruct({
  double? peso,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PesoStruct(
      peso: peso,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PesoStruct? updatePesoStruct(
  PesoStruct? pesoStruct, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    pesoStruct
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPesoStructData(
  Map<String, dynamic> firestoreData,
  PesoStruct? pesoStruct,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (pesoStruct == null) {
    return;
  }
  if (pesoStruct.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && pesoStruct.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final pesoStructData = getPesoFirestoreData(pesoStruct, forFieldValue);
  final nestedData = pesoStructData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = pesoStruct.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPesoFirestoreData(
  PesoStruct? pesoStruct, [
  bool forFieldValue = false,
]) {
  if (pesoStruct == null) {
    return {};
  }
  final firestoreData = mapToFirestore(pesoStruct.toMap());

  // Add any Firestore field values
  pesoStruct.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPesoListFirestoreData(
  List<PesoStruct>? pesoStructs,
) =>
    pesoStructs?.map((e) => getPesoFirestoreData(e, true)).toList() ?? [];
