import 'package:json_annotation/json_annotation.dart';

part 'pre_process_model.g.dart';


@JsonSerializable()
class PreProcessModel extends Object {

  @JsonKey(name: 'success')
  bool success;

  @JsonKey(name: 'result')
  Map result;

  @JsonKey(name: 'traceId')
  String traceId;

  PreProcessModel(this.success,this.result,this.traceId,);

  factory PreProcessModel.fromJson(Map<String, dynamic> srcJson) => _$PreProcessModelFromJson(srcJson);

  Map<String, dynamic> toJson() => _$PreProcessModelToJson(this);

}


