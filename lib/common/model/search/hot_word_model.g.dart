// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hot_word_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HotWordModel _$HotWordModelFromJson(Map<String, dynamic> json) {
  return HotWordModel(
    (json['hotWordList'] as List)
        ?.map((e) =>
            e == null ? null : HotWordList.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$HotWordModelToJson(HotWordModel instance) =>
    <String, dynamic>{
      'hotWordList': instance.hotWordList,
    };

HotWordList _$HotWordListFromJson(Map<String, dynamic> json) {
  return HotWordList(
    json['word'] as String,
    json['type'] as int,
  );
}

Map<String, dynamic> _$HotWordListToJson(HotWordList instance) =>
    <String, dynamic>{
      'word': instance.word,
      'type': instance.type,
    };
