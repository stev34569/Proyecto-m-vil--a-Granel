import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChatsGranelRecord extends FirestoreRecord {
  ChatsGranelRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "user_a" field.
  DocumentReference? _userA;
  DocumentReference? get userA => _userA;
  bool hasUserA() => _userA != null;

  // "user_b" field.
  DocumentReference? _userB;
  DocumentReference? get userB => _userB;
  bool hasUserB() => _userB != null;

  // "last_message" field.
  String? _lastMessage;
  String get lastMessage => _lastMessage ?? '';
  bool hasLastMessage() => _lastMessage != null;

  // "last_message_time" field.
  DateTime? _lastMessageTime;
  DateTime? get lastMessageTime => _lastMessageTime;
  bool hasLastMessageTime() => _lastMessageTime != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "message_seen" field.
  bool? _messageSeen;
  bool get messageSeen => _messageSeen ?? false;
  bool hasMessageSeen() => _messageSeen != null;

  void _initializeFields() {
    _user = snapshotData['user'] as DocumentReference?;
    _userA = snapshotData['user_a'] as DocumentReference?;
    _userB = snapshotData['user_b'] as DocumentReference?;
    _lastMessage = snapshotData['last_message'] as String?;
    _lastMessageTime = snapshotData['last_message_time'] as DateTime?;
    _image = snapshotData['image'] as String?;
    _messageSeen = snapshotData['message_seen'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('chats_granel');

  static Stream<ChatsGranelRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ChatsGranelRecord.fromSnapshot(s));

  static Future<ChatsGranelRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ChatsGranelRecord.fromSnapshot(s));

  static ChatsGranelRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ChatsGranelRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ChatsGranelRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ChatsGranelRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ChatsGranelRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ChatsGranelRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createChatsGranelRecordData({
  DocumentReference? user,
  DocumentReference? userA,
  DocumentReference? userB,
  String? lastMessage,
  DateTime? lastMessageTime,
  String? image,
  bool? messageSeen,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user': user,
      'user_a': userA,
      'user_b': userB,
      'last_message': lastMessage,
      'last_message_time': lastMessageTime,
      'image': image,
      'message_seen': messageSeen,
    }.withoutNulls,
  );

  return firestoreData;
}

class ChatsGranelRecordDocumentEquality implements Equality<ChatsGranelRecord> {
  const ChatsGranelRecordDocumentEquality();

  @override
  bool equals(ChatsGranelRecord? e1, ChatsGranelRecord? e2) {
    return e1?.user == e2?.user &&
        e1?.userA == e2?.userA &&
        e1?.userB == e2?.userB &&
        e1?.lastMessage == e2?.lastMessage &&
        e1?.lastMessageTime == e2?.lastMessageTime &&
        e1?.image == e2?.image &&
        e1?.messageSeen == e2?.messageSeen;
  }

  @override
  int hash(ChatsGranelRecord? e) => const ListEquality().hash([
        e?.user,
        e?.userA,
        e?.userB,
        e?.lastMessage,
        e?.lastMessageTime,
        e?.image,
        e?.messageSeen
      ]);

  @override
  bool isValidKey(Object? o) => o is ChatsGranelRecord;
}
