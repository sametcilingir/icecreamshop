import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel {
  String? userId;
  String? userName;
  String? userEmail;
  String? userPhoneNumber;
  String? userProfilePictureUrl;
  String? userSchool;
  String? userDegree;

  @JsonKey(fromJson: getDateFromTimeStamp, toJson: getTimeStampFromDate)
  DateTime? userCreatedTime;

  UserModel({
    this.userId,
    this.userName,
    this.userEmail,
    this.userPhoneNumber,
    this.userProfilePictureUrl,
    this.userDegree,
    this.userSchool,
    this.userCreatedTime,
  });

  factory UserModel.fromJson(Map<String, dynamic>? json) =>
      _$UserModelFromJson(json!);

  Map<String, dynamic> toJson() {
    return _$UserModelToJson(this);
  }

}

  DateTime? getDateFromTimeStamp(Timestamp? timeStamp) {
    return timeStamp?.toDate();
  }

  Timestamp? getTimeStampFromDate(DateTime? dateTime) {
    return dateTime != null ? Timestamp.fromDate(dateTime) : null;
  }