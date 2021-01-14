import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';


@JsonSerializable()
class UserModel extends Object {

  @JsonKey(name: 'token')
  String token;

  @JsonKey(name: 'user')
  User user;

  UserModel(this.token,this.user,);

  factory UserModel.fromJson(Map<String, dynamic> srcJson) => _$UserModelFromJson(srcJson);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);

}


@JsonSerializable()
class User extends Object {

  @JsonKey(name: 'mobile')
  String mobile;

  @JsonKey(name: 'nickName')
  String nickName;

  @JsonKey(name: 'avatar')
  String avatar;

  @JsonKey(name: 'gender')
  int gender;

  @JsonKey(name: 'avatar')
  String userId;

  User(this.mobile,this.nickName,this.avatar,this.gender,this.userId);

  factory User.fromJson(Map<String, dynamic> srcJson) => _$UserFromJson(srcJson);

  Map<String, dynamic> toJson() => _$UserToJson(this);

}


