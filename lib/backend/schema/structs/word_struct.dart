import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'word_struct.g.dart';

abstract class WordStruct implements Built<WordStruct, WordStructBuilder> {
  static Serializer<WordStruct> get serializer => _$wordStructSerializer;

  String? get id;

  String? get danish;

  String? get english;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(WordStructBuilder builder) => builder
    ..id = ''
    ..danish = ''
    ..english = ''
    ..firestoreUtilData = FirestoreUtilData();

  WordStruct._();
  factory WordStruct([void Function(WordStructBuilder) updates]) = _$WordStruct;
}

WordStruct createWordStruct({
  String? id,
  String? danish,
  String? english,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    WordStruct(
      (w) => w
        ..id = id
        ..danish = danish
        ..english = english
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

WordStruct? updateWordStruct(
  WordStruct? word, {
  bool clearUnsetFields = true,
}) =>
    word != null
        ? (word.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addWordStructData(
  Map<String, dynamic> firestoreData,
  WordStruct? word,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (word == null) {
    return;
  }
  if (word.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && word.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final wordData = getWordFirestoreData(word, forFieldValue);
  final nestedData = wordData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = word.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getWordFirestoreData(
  WordStruct? word, [
  bool forFieldValue = false,
]) {
  if (word == null) {
    return {};
  }
  final firestoreData = serializers.toFirestore(WordStruct.serializer, word);

  // Add any Firestore field values
  word.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getWordListFirestoreData(
  List<WordStruct>? words,
) =>
    words?.map((w) => getWordFirestoreData(w, true)).toList() ?? [];
