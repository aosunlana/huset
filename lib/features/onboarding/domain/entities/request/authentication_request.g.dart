// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthenticationRequestImpl _$$AuthenticationRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$AuthenticationRequestImpl(
      email: json['email'] as String,
      password: json['password'] as int,
    );

Map<String, dynamic> _$$AuthenticationRequestImplToJson(
        _$AuthenticationRequestImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };
