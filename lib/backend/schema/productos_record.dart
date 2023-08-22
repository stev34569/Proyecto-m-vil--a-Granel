import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductosRecord extends FirestoreRecord {
  ProductosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "imagen" field.
  String? _imagen;
  String get imagen => _imagen ?? '';
  bool hasImagen() => _imagen != null;

  // "disponibilidad" field.
  bool? _disponibilidad;
  bool get disponibilidad => _disponibilidad ?? false;
  bool hasDisponibilidad() => _disponibilidad != null;

  // "categoria" field.
  DocumentReference? _categoria;
  DocumentReference? get categoria => _categoria;
  bool hasCategoria() => _categoria != null;

  // "peso" field.
  PesoStruct? _peso;
  PesoStruct get peso => _peso ?? PesoStruct();
  bool hasPeso() => _peso != null;

  // "cantidad" field.
  int? _cantidad;
  int get cantidad => _cantidad ?? 0;
  bool hasCantidad() => _cantidad != null;

  // "precio" field.
  int? _precio;
  int get precio => _precio ?? 0;
  bool hasPrecio() => _precio != null;

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
    _imagen = snapshotData['imagen'] as String?;
    _disponibilidad = snapshotData['disponibilidad'] as bool?;
    _categoria = snapshotData['categoria'] as DocumentReference?;
    _peso = PesoStruct.maybeFromMap(snapshotData['peso']);
    _cantidad = castToType<int>(snapshotData['cantidad']);
    _precio = castToType<int>(snapshotData['precio']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Productos');

  static Stream<ProductosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProductosRecord.fromSnapshot(s));

  static Future<ProductosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProductosRecord.fromSnapshot(s));

  static ProductosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProductosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProductosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProductosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProductosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProductosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProductosRecordData({
  String? nombre,
  String? imagen,
  bool? disponibilidad,
  DocumentReference? categoria,
  PesoStruct? peso,
  int? cantidad,
  int? precio,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
      'imagen': imagen,
      'disponibilidad': disponibilidad,
      'categoria': categoria,
      'peso': PesoStruct().toMap(),
      'cantidad': cantidad,
      'precio': precio,
    }.withoutNulls,
  );

  // Handle nested data for "peso" field.
  addPesoStructData(firestoreData, peso, 'peso');

  return firestoreData;
}

class ProductosRecordDocumentEquality implements Equality<ProductosRecord> {
  const ProductosRecordDocumentEquality();

  @override
  bool equals(ProductosRecord? e1, ProductosRecord? e2) {
    return e1?.nombre == e2?.nombre &&
        e1?.imagen == e2?.imagen &&
        e1?.disponibilidad == e2?.disponibilidad &&
        e1?.categoria == e2?.categoria &&
        e1?.peso == e2?.peso &&
        e1?.cantidad == e2?.cantidad &&
        e1?.precio == e2?.precio;
  }

  @override
  int hash(ProductosRecord? e) => const ListEquality().hash([
        e?.nombre,
        e?.imagen,
        e?.disponibilidad,
        e?.categoria,
        e?.peso,
        e?.cantidad,
        e?.precio
      ]);

  @override
  bool isValidKey(Object? o) => o is ProductosRecord;
}
