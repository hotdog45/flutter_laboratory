import 'package:json_annotation/json_annotation.dart'; 
  
part 'load_personal.g.dart';


@JsonSerializable()
  class LoadPersonal extends Object {

  @JsonKey(name: 'personalInfo')
  PersonalInfo personalInfo;

  @JsonKey(name: 'customerBlock')
  CustomerBlock customerBlock;

  @JsonKey(name: 'questionTextInfo')
  QuestionTextInfo questionTextInfo;

  @JsonKey(name: 'aboutUsTextInfo')
  AboutUsTextInfo aboutUsTextInfo;

  @JsonKey(name: 'promotionNum')
  int promotionNum;


  LoadPersonal(this.personalInfo,this.customerBlock,this.questionTextInfo,this.aboutUsTextInfo,this.promotionNum);

  factory LoadPersonal.fromJson(Map<String, dynamic> srcJson) => _$LoadPersonalFromJson(srcJson);

  Map<String, dynamic> toJson() => _$LoadPersonalToJson(this);

}

  
@JsonSerializable()
  class PersonalInfo extends Object {

  @JsonKey(name: 'headImg')
  String headImg;

  @JsonKey(name: 'phone')
  String phone;

  @JsonKey(name: 'code')
  String code;

  @JsonKey(name: 'address')
  String address;

  @JsonKey(name: 'userId')
  String userId;

  PersonalInfo(this.headImg,this.phone,this.code,this.address,this.userId,);

  factory PersonalInfo.fromJson(Map<String, dynamic> srcJson) => _$PersonalInfoFromJson(srcJson);

  Map<String, dynamic> toJson() => _$PersonalInfoToJson(this);

}

  
@JsonSerializable()
  class CustomerBlock extends Object {

  @JsonKey(name: 'customerServiceWorkTimeStr')
  String customerServiceWorkTimeStr;

  @JsonKey(name: 'customerServicePhone')
  String customerServicePhone;

  @JsonKey(name: 'servicePhoneList')
  List<ServicePhoneList> servicePhoneList;

  CustomerBlock(this.customerServiceWorkTimeStr,this.customerServicePhone,this.servicePhoneList,);

  factory CustomerBlock.fromJson(Map<String, dynamic> srcJson) => _$CustomerBlockFromJson(srcJson);

  Map<String, dynamic> toJson() => _$CustomerBlockToJson(this);

}

  
@JsonSerializable()
  class ServicePhoneList extends Object {

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'phone')
  String phone;

  ServicePhoneList(this.name,this.phone,);

  factory ServicePhoneList.fromJson(Map<String, dynamic> srcJson) => _$ServicePhoneListFromJson(srcJson);

  Map<String, dynamic> toJson() => _$ServicePhoneListToJson(this);

}

  
@JsonSerializable()
  class QuestionTextInfo extends Object {

  @JsonKey(name: 'totalTitle')
  String totalTitle;

  @JsonKey(name: 'textBlockList')
  List<TextBlockList> textBlockList;

  QuestionTextInfo(this.totalTitle,this.textBlockList,);

  factory QuestionTextInfo.fromJson(Map<String, dynamic> srcJson) => _$QuestionTextInfoFromJson(srcJson);

  Map<String, dynamic> toJson() => _$QuestionTextInfoToJson(this);

}

  
@JsonSerializable()
  class TextBlockList extends Object {

  @JsonKey(name: 'title')
  String title;

  @JsonKey(name: 'content')
  String content;

  @JsonKey(name: 'subTextBlockList')
  List<dynamic> subTextBlockList;

  TextBlockList(this.title,this.content,this.subTextBlockList,);

  factory TextBlockList.fromJson(Map<String, dynamic> srcJson) => _$TextBlockListFromJson(srcJson);

  Map<String, dynamic> toJson() => _$TextBlockListToJson(this);

}

  
@JsonSerializable()
  class AboutUsTextInfo extends Object {

  @JsonKey(name: 'totalTitle')
  String totalTitle;

  @JsonKey(name: 'textBlockList')
  List<TextBlockList> textBlockList;

  AboutUsTextInfo(this.totalTitle,this.textBlockList,);

  factory AboutUsTextInfo.fromJson(Map<String, dynamic> srcJson) => _$AboutUsTextInfoFromJson(srcJson);

  Map<String, dynamic> toJson() => _$AboutUsTextInfoToJson(this);

}

  

  
