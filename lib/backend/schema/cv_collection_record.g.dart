// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cv_collection_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CvCollectionRecord> _$cvCollectionRecordSerializer =
    new _$CvCollectionRecordSerializer();

class _$CvCollectionRecordSerializer
    implements StructuredSerializer<CvCollectionRecord> {
  @override
  final Iterable<Type> types = const [CvCollectionRecord, _$CvCollectionRecord];
  @override
  final String wireName = 'CvCollectionRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, CvCollectionRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  CvCollectionRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CvCollectionRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$CvCollectionRecord extends CvCollectionRecord {
  @override
  final DocumentReference<Object> name;
  @override
  final DocumentReference<Object> reference;

  factory _$CvCollectionRecord(
          [void Function(CvCollectionRecordBuilder) updates]) =>
      (new CvCollectionRecordBuilder()..update(updates)).build();

  _$CvCollectionRecord._({this.name, this.reference}) : super._();

  @override
  CvCollectionRecord rebuild(
          void Function(CvCollectionRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CvCollectionRecordBuilder toBuilder() =>
      new CvCollectionRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CvCollectionRecord &&
        name == other.name &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, name.hashCode), reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CvCollectionRecord')
          ..add('name', name)
          ..add('reference', reference))
        .toString();
  }
}

class CvCollectionRecordBuilder
    implements Builder<CvCollectionRecord, CvCollectionRecordBuilder> {
  _$CvCollectionRecord _$v;

  DocumentReference<Object> _name;
  DocumentReference<Object> get name => _$this._name;
  set name(DocumentReference<Object> name) => _$this._name = name;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  CvCollectionRecordBuilder() {
    CvCollectionRecord._initializeBuilder(this);
  }

  CvCollectionRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CvCollectionRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CvCollectionRecord;
  }

  @override
  void update(void Function(CvCollectionRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CvCollectionRecord build() {
    final _$result =
        _$v ?? new _$CvCollectionRecord._(name: name, reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
