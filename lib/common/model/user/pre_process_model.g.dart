// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pre_process_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PreProcessModel _$PreProcessModelFromJson(Map<String, dynamic> json) {
  return PreProcessModel(
    json['success'] as bool,
    json['result'] as Map<String, dynamic>,
    json['traceId'] as String,
  );
}

Map<String, dynamic> _$PreProcessModelToJson(PreProcessModel instance) =>
    <String, dynamic>{
      'success': instance.success,
      'result': instance.result,
      'traceId': instance.traceId,
    };
