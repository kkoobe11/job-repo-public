import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'cv_collection_record.g.dart';

abstract class CvCollectionRecord
    implements Built<CvCollectionRecord, CvCollectionRecordBuilder> {
  static Serializer<CvCollectionRecord> get serializer =>
      _$cvCollectionRecordSerializer;

  @nullable
  DocumentReference get name;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(CvCollectionRecordBuilder builder) => builder;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cvCollection');

  static Stream<CvCollectionRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<CvCollectionRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  CvCollectionRecord._();
  factory CvCollectionRecord(
          [void Function(CvCollectionRecordBuilder) updates]) =
      _$CvCollectionRecord;

  static CvCollectionRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createCvCollectionRecordData({
  DocumentReference name,
}) =>
    serializers.toFirestore(CvCollectionRecord.serializer,
        CvCollectionRecord((c) => c..name = name));
