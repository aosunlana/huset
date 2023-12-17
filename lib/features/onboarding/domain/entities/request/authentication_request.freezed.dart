// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authentication_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthenticationRequest _$AuthenticationRequestFromJson(
    Map<String, dynamic> json) {
  return _AuthenticationRequest.fromJson(json);
}

/// @nodoc
mixin _$AuthenticationRequest {
  String get email => throw _privateConstructorUsedError;
  int get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthenticationRequestCopyWith<AuthenticationRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationRequestCopyWith<$Res> {
  factory $AuthenticationRequestCopyWith(AuthenticationRequest value,
          $Res Function(AuthenticationRequest) then) =
      _$AuthenticationRequestCopyWithImpl<$Res, AuthenticationRequest>;
  @useResult
  $Res call({String email, int password});
}

/// @nodoc
class _$AuthenticationRequestCopyWithImpl<$Res,
        $Val extends AuthenticationRequest>
    implements $AuthenticationRequestCopyWith<$Res> {
  _$AuthenticationRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthenticationRequestImplCopyWith<$Res>
    implements $AuthenticationRequestCopyWith<$Res> {
  factory _$$AuthenticationRequestImplCopyWith(
          _$AuthenticationRequestImpl value,
          $Res Function(_$AuthenticationRequestImpl) then) =
      __$$AuthenticationRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, int password});
}

/// @nodoc
class __$$AuthenticationRequestImplCopyWithImpl<$Res>
    extends _$AuthenticationRequestCopyWithImpl<$Res,
        _$AuthenticationRequestImpl>
    implements _$$AuthenticationRequestImplCopyWith<$Res> {
  __$$AuthenticationRequestImplCopyWithImpl(_$AuthenticationRequestImpl _value,
      $Res Function(_$AuthenticationRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$AuthenticationRequestImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthenticationRequestImpl implements _AuthenticationRequest {
  const _$AuthenticationRequestImpl(
      {required this.email, required this.password});

  factory _$AuthenticationRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthenticationRequestImplFromJson(json);

  @override
  final String email;
  @override
  final int password;

  @override
  String toString() {
    return 'AuthenticationRequest(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationRequestImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticationRequestImplCopyWith<_$AuthenticationRequestImpl>
      get copyWith => __$$AuthenticationRequestImplCopyWithImpl<
          _$AuthenticationRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthenticationRequestImplToJson(
      this,
    );
  }
}

abstract class _AuthenticationRequest implements AuthenticationRequest {
  const factory _AuthenticationRequest(
      {required final String email,
      required final int password}) = _$AuthenticationRequestImpl;

  factory _AuthenticationRequest.fromJson(Map<String, dynamic> json) =
      _$AuthenticationRequestImpl.fromJson;

  @override
  String get email;
  @override
  int get password;
  @override
  @JsonKey(ignore: true)
  _$$AuthenticationRequestImplCopyWith<_$AuthenticationRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
