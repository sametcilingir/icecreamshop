// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return UserModel(
    userId: json['userId'] as String?,
    userName: json['userName'] as String?,
    userEmail: json['userEmail'] as String?,
    userPhoneNumber: json['userPhoneNumber'] as String?,
    userProfilePictureUrl: json['userProfilePictureUrl'] as String?,
    userDegree: json['userDegree'] as String?,
    userSchool: json['userSchool'] as String?,
    userCreatedTime:
        getDateFromTimeStamp(json['userCreatedTime'] as Timestamp?),
  );
}

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'userId': instance.userId,
      'userName': instance.userName,
      'userEmail': instance.userEmail,
      'userPhoneNumber': instance.userPhoneNumber,
      'userProfilePictureUrl': instance.userProfilePictureUrl,
      'userSchool': instance.userSchool,
      'userDegree': instance.userDegree,
      'userCreatedTime': getTimeStampFromDate(instance.userCreatedTime),
    };
