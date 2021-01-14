import 'package:json_annotation/json_annotation.dart'; 
  
part 'hot_word_model.g.dart';


@JsonSerializable()
  class HotWordModel extends Object {

  @JsonKey(name: 'hotWordList')
  List<HotWordList> hotWordList;

  HotWordModel(this.hotWordList,);

  factory HotWordModel.fromJson(Map<String, dynamic> srcJson) => _$HotWordModelFromJson(srcJson);

  Map<String, dynamic> toJson() => _$HotWordModelToJson(this);

}

  
@JsonSerializable()
  class HotWordList extends Object {

  @JsonKey(name: 'word')
  String word;

  @JsonKey(name: 'type')
  int type;

  HotWordList(this.word,this.type,);

  factory HotWordList.fromJson(Map<String, dynamic> srcJson) => _$HotWordListFromJson(srcJson);

  Map<String, dynamic> toJson() => _$HotWordListToJson(this);

}

  
