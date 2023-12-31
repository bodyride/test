// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'words_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<WordsRecord> _$wordsRecordSerializer = new _$WordsRecordSerializer();

class _$WordsRecordSerializer implements StructuredSerializer<WordsRecord> {
  @override
  final Iterable<Type> types = const [WordsRecord, _$WordsRecord];
  @override
  final String wireName = 'WordsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, WordsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.danish;
    if (value != null) {
      result
        ..add('danish')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.english;
    if (value != null) {
      result
        ..add('english')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.group;
    if (value != null) {
      result
        ..add('group')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.sentence;
    if (value != null) {
      result
        ..add('sentence')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  WordsRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WordsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'danish':
          result.danish = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'english':
          result.english = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'group':
          result.group = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'sentence':
          result.sentence.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$WordsRecord extends WordsRecord {
  @override
  final String? danish;
  @override
  final String? english;
  @override
  final String? group;
  @override
  final BuiltList<String>? sentence;
  @override
  final int? id;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$WordsRecord([void Function(WordsRecordBuilder)? updates]) =>
      (new WordsRecordBuilder()..update(updates))._build();

  _$WordsRecord._(
      {this.danish,
      this.english,
      this.group,
      this.sentence,
      this.id,
      this.ffRef})
      : super._();

  @override
  WordsRecord rebuild(void Function(WordsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WordsRecordBuilder toBuilder() => new WordsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WordsRecord &&
        danish == other.danish &&
        english == other.english &&
        group == other.group &&
        sentence == other.sentence &&
        id == other.id &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, danish.hashCode);
    _$hash = $jc(_$hash, english.hashCode);
    _$hash = $jc(_$hash, group.hashCode);
    _$hash = $jc(_$hash, sentence.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WordsRecord')
          ..add('danish', danish)
          ..add('english', english)
          ..add('group', group)
          ..add('sentence', sentence)
          ..add('id', id)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class WordsRecordBuilder implements Builder<WordsRecord, WordsRecordBuilder> {
  _$WordsRecord? _$v;

  String? _danish;
  String? get danish => _$this._danish;
  set danish(String? danish) => _$this._danish = danish;

  String? _english;
  String? get english => _$this._english;
  set english(String? english) => _$this._english = english;

  String? _group;
  String? get group => _$this._group;
  set group(String? group) => _$this._group = group;

  ListBuilder<String>? _sentence;
  ListBuilder<String> get sentence =>
      _$this._sentence ??= new ListBuilder<String>();
  set sentence(ListBuilder<String>? sentence) => _$this._sentence = sentence;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  WordsRecordBuilder() {
    WordsRecord._initializeBuilder(this);
  }

  WordsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _danish = $v.danish;
      _english = $v.english;
      _group = $v.group;
      _sentence = $v.sentence?.toBuilder();
      _id = $v.id;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WordsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WordsRecord;
  }

  @override
  void update(void Function(WordsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WordsRecord build() => _build();

  _$WordsRecord _build() {
    _$WordsRecord _$result;
    try {
      _$result = _$v ??
          new _$WordsRecord._(
              danish: danish,
              english: english,
              group: group,
              sentence: _sentence?.build(),
              id: id,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sentence';
        _sentence?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'WordsRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
