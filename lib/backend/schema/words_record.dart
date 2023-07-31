import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'words_record.g.dart';

abstract class WordsRecord implements Built<WordsRecord, WordsRecordBuilder> {
  static Serializer<WordsRecord> get serializer => _$wordsRecordSerializer;

  String? get danish;

  String? get english;

  String? get group;

  BuiltList<String>? get sentence;

  int? get id;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(WordsRecordBuilder builder) => builder
    ..danish = ''
    ..english = ''
    ..group = ''
    ..sentence = ListBuilder()
    ..id = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('words');

  static Stream<WordsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<WordsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  WordsRecord._();
  factory WordsRecord([void Function(WordsRecordBuilder) updates]) =
      _$WordsRecord;

  static WordsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createWordsRecordData({
  String? danish,
  String? english,
  String? group,
  int? id,
}) {
  final firestoreData = serializers.toFirestore(
    WordsRecord.serializer,
    WordsRecord(
      (w) => w
        ..danish = danish
        ..english = english
        ..group = group
        ..sentence = null
        ..id = id,
    ),
  );

  return firestoreData;
}
