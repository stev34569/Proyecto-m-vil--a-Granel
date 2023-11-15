import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChatRoomRecord extends FirestoreRecord {
  ChatRoomRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  bool hasMessage() => _message != null;

  // "senderId" field.
  String? _senderId;
  String get senderId => _senderId ?? '';
  bool hasSenderId() => _senderId != null;

  // "receiverId" field.
  String? _receiverId;
  String get receiverId => _receiverId ?? '';
  bool hasReceiverId() => _receiverId != null;

  // "time" field.
  DateTime? _time;
  DateTime? get time => _time;
  bool hasTime() => _time != null;

  // "idConversacion" field.
  String? _idConversacion;
  String get idConversacion => _idConversacion ?? '';
  bool hasIdConversacion() => _idConversacion != null;

  void _initializeFields() {
    _message = snapshotData['message'] as String?;
    _senderId = snapshotData['senderId'] as String?;
    _receiverId = snapshotData['receiverId'] as String?;
    _time = snapshotData['time'] as DateTime?;
    _idConversacion = snapshotData['idConversacion'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('chatRoom');

  static Stream<ChatRoomRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ChatRoomRecord.fromSnapshot(s));

  static Future<ChatRoomRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ChatRoomRecord.fromSnapshot(s));

  static ChatRoomRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ChatRoomRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ChatRoomRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ChatRoomRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ChatRoomRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ChatRoomRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createChatRoomRecordData({
  String? message,
  String? senderId,
  String? receiverId,
  DateTime? time,
  String? idConversacion,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'message': message,
      'senderId': senderId,
      'receiverId': receiverId,
      'time': time,
      'idConversacion': idConversacion,
    }.withoutNulls,
  );

  return firestoreData;
}

class ChatRoomRecordDocumentEquality implements Equality<ChatRoomRecord> {
  const ChatRoomRecordDocumentEquality();

  @override
  bool equals(ChatRoomRecord? e1, ChatRoomRecord? e2) {
    return e1?.message == e2?.message &&
        e1?.senderId == e2?.senderId &&
        e1?.receiverId == e2?.receiverId &&
        e1?.time == e2?.time &&
        e1?.idConversacion == e2?.idConversacion;
  }

  @override
  int hash(ChatRoomRecord? e) => const ListEquality().hash(
      [e?.message, e?.senderId, e?.receiverId, e?.time, e?.idConversacion]);

  @override
  bool isValidKey(Object? o) => o is ChatRoomRecord;
}
