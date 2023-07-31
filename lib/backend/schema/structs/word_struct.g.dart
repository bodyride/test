// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'word_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<WordStruct> _$wordStructSerializer = new _$WordStructSerializer();

class _$WordStructSerializer implements StructuredSerializer<WordStruct> {
  @override
  final Iterable<Type> types = const [WordStruct, _$WordStruct];
  @override
  final String wireName = 'WordStruct';

  @override
  Iterable<Object?> serialize(Serializers serializers, WordStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
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
    return result;
  }

  @override
  WordStruct deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WordStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'danish':
          result.danish = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'english':
          result.english = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'firestoreUtilData':
          result.firestoreUtilData = serializers.deserialize(value,
                  specifiedType: const FullType(FirestoreUtilData))!
              as FirestoreUtilData;
          break;
      }
    }

    return result.build();
  }
}

class _$WordStruct extends WordStruct {
  @override
  final String? id;
  @override
  final String? danish;
  @override
  final String? english;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$WordStruct([void Function(WordStructBuilder)? updates]) =>
      (new WordStructBuilder()..update(updates))._build();

  _$WordStruct._(
      {this.id, this.danish, this.english, required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'WordStruct', 'firestoreUtilData');
  }

  @override
  WordStruct rebuild(void Function(WordStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WordStructBuilder toBuilder() => new WordStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WordStruct &&
        id == other.id &&
        danish == other.danish &&
        english == other.english &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, danish.hashCode);
    _$hash = $jc(_$hash, english.hashCode);
    _$hash = $jc(_$hash, firestoreUtilData.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WordStruct')
          ..add('id', id)
          ..add('danish', danish)
          ..add('english', english)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class WordStructBuilder implements Builder<WordStruct, WordStructBuilder> {
  _$WordStruct? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _danish;
  String? get danish => _$this._danish;
  set danish(String? danish) => _$this._danish = danish;

  String? _english;
  String? get english => _$this._english;
  set english(String? english) => _$this._english = english;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  WordStructBuilder() {
    WordStruct._initializeBuilder(this);
  }

  WordStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _danish = $v.danish;
      _english = $v.english;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WordStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WordStruct;
  }

  @override
  void update(void Function(WordStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WordStruct build() => _build();

  _$WordStruct _build() {
    final _$result = _$v ??
        new _$WordStruct._(
            id: id,
            danish: danish,
            english: english,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData, r'WordStruct', 'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
