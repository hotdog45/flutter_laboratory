// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'load_personal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoadPersonal _$LoadPersonalFromJson(Map<String, dynamic> json) {
  return LoadPersonal(
    json['personalInfo'] == null
        ? null
        : PersonalInfo.fromJson(json['personalInfo'] as Map<String, dynamic>),
    json['customerBlock'] == null
        ? null
        : CustomerBlock.fromJson(json['customerBlock'] as Map<String, dynamic>),
    json['questionTextInfo'] == null
        ? null
        : QuestionTextInfo.fromJson(
            json['questionTextInfo'] as Map<String, dynamic>),
    json['aboutUsTextInfo'] == null
        ? null
        : AboutUsTextInfo.fromJson(
            json['aboutUsTextInfo'] as Map<String, dynamic>),
    json['promotionNum'] as int,
  );
}

Map<String, dynamic> _$LoadPersonalToJson(LoadPersonal instance) =>
    <String, dynamic>{
      'personalInfo': instance.personalInfo,
      'customerBlock': instance.customerBlock,
      'questionTextInfo': instance.questionTextInfo,
      'aboutUsTextInfo': instance.aboutUsTextInfo,
      'promotionNum': instance.promotionNum,
    };

PersonalInfo _$PersonalInfoFromJson(Map<String, dynamic> json) {
  return PersonalInfo(
    json['headImg'] as String,
    json['phone'] as String,
    json['code'] as String,
    json['address'] as String,
    json['userId'] as String,
  );
}

Map<String, dynamic> _$PersonalInfoToJson(PersonalInfo instance) =>
    <String, dynamic>{
      'headImg': instance.headImg,
      'phone': instance.phone,
      'code': instance.code,
      'address': instance.address,
      'userId': instance.userId,
    };

CustomerBlock _$CustomerBlockFromJson(Map<String, dynamic> json) {
  return CustomerBlock(
    json['customerServiceWorkTimeStr'] as String,
    json['customerServicePhone'] as String,
    (json['servicePhoneList'] as List)
        ?.map((e) => e == null
            ? null
            : ServicePhoneList.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$CustomerBlockToJson(CustomerBlock instance) =>
    <String, dynamic>{
      'customerServiceWorkTimeStr': instance.customerServiceWorkTimeStr,
      'customerServicePhone': instance.customerServicePhone,
      'servicePhoneList': instance.servicePhoneList,
    };

ServicePhoneList _$ServicePhoneListFromJson(Map<String, dynamic> json) {
  return ServicePhoneList(
    json['name'] as String,
    json['phone'] as String,
  );
}

Map<String, dynamic> _$ServicePhoneListToJson(ServicePhoneList instance) =>
    <String, dynamic>{
      'name': instance.name,
      'phone': instance.phone,
    };

QuestionTextInfo _$QuestionTextInfoFromJson(Map<String, dynamic> json) {
  return QuestionTextInfo(
    json['totalTitle'] as String,
    (json['textBlockList'] as List)
        ?.map((e) => e == null
            ? null
            : TextBlockList.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$QuestionTextInfoToJson(QuestionTextInfo instance) =>
    <String, dynamic>{
      'totalTitle': instance.totalTitle,
      'textBlockList': instance.textBlockList,
    };

TextBlockList _$TextBlockListFromJson(Map<String, dynamic> json) {
  return TextBlockList(
    json['title'] as String,
    json['content'] as String,
    json['subTextBlockList'] as List,
  );
}

Map<String, dynamic> _$TextBlockListToJson(TextBlockList instance) =>
    <String, dynamic>{
      'title': instance.title,
      'content': instance.content,
      'subTextBlockList': instance.subTextBlockList,
    };

AboutUsTextInfo _$AboutUsTextInfoFromJson(Map<String, dynamic> json) {
  return AboutUsTextInfo(
    json['totalTitle'] as String,
    (json['textBlockList'] as List)
        ?.map((e) => e == null
            ? null
            : TextBlockList.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$AboutUsTextInfoToJson(AboutUsTextInfo instance) =>
    <String, dynamic>{
      'totalTitle': instance.totalTitle,
      'textBlockList': instance.textBlockList,
    };
