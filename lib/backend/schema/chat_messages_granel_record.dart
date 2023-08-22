import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChatMessagesGranelRecord extends FirestoreRecord {
  ChatMessagesGranelRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "text" field.
  String? _text;
  String get text => _text ?? '';
  bool hasText() => _text != null;

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "chat_user" field.
  DocumentReference? _chatUser;
  DocumentReference? get chatUser => _chatUser;
  bool hasChatUser() => _chatUser != null;

  void _initializeFields() {
    _user = snapshotData['user'] as DocumentReference?;
    _text = snapshotData['text'] as String?;
    _timestamp = snapshotData['timestamp'] as DateTime?;
    _image = snapshotData['image'] as String?;
    _chatUser = snapshotData['chat_user'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('chat_messages_granel');

  static Stream<ChatMessagesGranelRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ChatMessagesGranelRecord.fromSnapshot(s));

  static Future<ChatMessagesGranelRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => ChatMessagesGranelRecord.fromSnapshot(s));

  static ChatMessagesGranelRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ChatMessagesGranelRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ChatMessagesGranelRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ChatMessagesGranelRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ChatMessagesGranelRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ChatMessagesGranelRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createChatMessagesGranelRecordData({
  DocumentReference? user,
  String? text,
  DateTime? timestamp,
  String? image,
  DocumentReference? chatUser,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user': user,
      'text': text,
      'timestamp': timestamp,
      'image': image,
      'chat_user': chatUser,
    }.withoutNulls,
  );

  return firestoreData;
}

class ChatMessagesGranelRecordDocumentEquality
    implements Equality<ChatMessagesGranelRecord> {
  const ChatMessagesGranelRecordDocumentEquality();

  @override
  bool equals(ChatMessagesGranelRecord? e1, ChatMessagesGranelRecord? e2) {
    return e1?.user == e2?.user &&
        e1?.text == e2?.text &&
        e1?.timestamp == e2?.timestamp &&
        e1?.image == e2?.image &&
        e1?.chatUser == e2?.chatUser;
  }

  @override
  int hash(ChatMessagesGranelRecord? e) => const ListEquality()
      .hash([e?.user, e?.text, e?.timestamp, e?.image, e?.chatUser]);

  @override
  bool isValidKey(Object? o) => o is ChatMessagesGranelRecord;
}
