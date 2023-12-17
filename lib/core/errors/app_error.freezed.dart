// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppError {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() mockFailure,
    required TResult Function() networkFailure,
    required TResult Function(int? statusCode, Map<String, dynamic>? json)
        serverFailure,
    required TResult Function(dynamic error) unknownFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? mockFailure,
    TResult? Function()? networkFailure,
    TResult? Function(int? statusCode, Map<String, dynamic>? json)?
        serverFailure,
    TResult? Function(dynamic error)? unknownFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? mockFailure,
    TResult Function()? networkFailure,
    TResult Function(int? statusCode, Map<String, dynamic>? json)?
        serverFailure,
    TResult Function(dynamic error)? unknownFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MockFailure value) mockFailure,
    required TResult Function(_NetworkError value) networkFailure,
    required TResult Function(_ServerError value) serverFailure,
    required TResult Function(_UnknownError value) unknownFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MockFailure value)? mockFailure,
    TResult? Function(_NetworkError value)? networkFailure,
    TResult? Function(_ServerError value)? serverFailure,
    TResult? Function(_UnknownError value)? unknownFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MockFailure value)? mockFailure,
    TResult Function(_NetworkError value)? networkFailure,
    TResult Function(_ServerError value)? serverFailure,
    TResult Function(_UnknownError value)? unknownFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppErrorCopyWith<$Res> {
  factory $AppErrorCopyWith(AppError value, $Res Function(AppError) then) =
      _$AppErrorCopyWithImpl<$Res, AppError>;
}

/// @nodoc
class _$AppErrorCopyWithImpl<$Res, $Val extends AppError>
    implements $AppErrorCopyWith<$Res> {
  _$AppErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MockFailureImplCopyWith<$Res> {
  factory _$$MockFailureImplCopyWith(
          _$MockFailureImpl value, $Res Function(_$MockFailureImpl) then) =
      __$$MockFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MockFailureImplCopyWithImpl<$Res>
    extends _$AppErrorCopyWithImpl<$Res, _$MockFailureImpl>
    implements _$$MockFailureImplCopyWith<$Res> {
  __$$MockFailureImplCopyWithImpl(
      _$MockFailureImpl _value, $Res Function(_$MockFailureImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MockFailureImpl extends _MockFailure {
  _$MockFailureImpl() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MockFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() mockFailure,
    required TResult Function() networkFailure,
    required TResult Function(int? statusCode, Map<String, dynamic>? json)
        serverFailure,
    required TResult Function(dynamic error) unknownFailure,
  }) {
    return mockFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? mockFailure,
    TResult? Function()? networkFailure,
    TResult? Function(int? statusCode, Map<String, dynamic>? json)?
        serverFailure,
    TResult? Function(dynamic error)? unknownFailure,
  }) {
    return mockFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? mockFailure,
    TResult Function()? networkFailure,
    TResult Function(int? statusCode, Map<String, dynamic>? json)?
        serverFailure,
    TResult Function(dynamic error)? unknownFailure,
    required TResult orElse(),
  }) {
    if (mockFailure != null) {
      return mockFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MockFailure value) mockFailure,
    required TResult Function(_NetworkError value) networkFailure,
    required TResult Function(_ServerError value) serverFailure,
    required TResult Function(_UnknownError value) unknownFailure,
  }) {
    return mockFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MockFailure value)? mockFailure,
    TResult? Function(_NetworkError value)? networkFailure,
    TResult? Function(_ServerError value)? serverFailure,
    TResult? Function(_UnknownError value)? unknownFailure,
  }) {
    return mockFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MockFailure value)? mockFailure,
    TResult Function(_NetworkError value)? networkFailure,
    TResult Function(_ServerError value)? serverFailure,
    TResult Function(_UnknownError value)? unknownFailure,
    required TResult orElse(),
  }) {
    if (mockFailure != null) {
      return mockFailure(this);
    }
    return orElse();
  }
}

abstract class _MockFailure extends AppError {
  factory _MockFailure() = _$MockFailureImpl;
  _MockFailure._() : super._();
}

/// @nodoc
abstract class _$$NetworkErrorImplCopyWith<$Res> {
  factory _$$NetworkErrorImplCopyWith(
          _$NetworkErrorImpl value, $Res Function(_$NetworkErrorImpl) then) =
      __$$NetworkErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NetworkErrorImplCopyWithImpl<$Res>
    extends _$AppErrorCopyWithImpl<$Res, _$NetworkErrorImpl>
    implements _$$NetworkErrorImplCopyWith<$Res> {
  __$$NetworkErrorImplCopyWithImpl(
      _$NetworkErrorImpl _value, $Res Function(_$NetworkErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NetworkErrorImpl extends _NetworkError {
  _$NetworkErrorImpl() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NetworkErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() mockFailure,
    required TResult Function() networkFailure,
    required TResult Function(int? statusCode, Map<String, dynamic>? json)
        serverFailure,
    required TResult Function(dynamic error) unknownFailure,
  }) {
    return networkFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? mockFailure,
    TResult? Function()? networkFailure,
    TResult? Function(int? statusCode, Map<String, dynamic>? json)?
        serverFailure,
    TResult? Function(dynamic error)? unknownFailure,
  }) {
    return networkFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? mockFailure,
    TResult Function()? networkFailure,
    TResult Function(int? statusCode, Map<String, dynamic>? json)?
        serverFailure,
    TResult Function(dynamic error)? unknownFailure,
    required TResult orElse(),
  }) {
    if (networkFailure != null) {
      return networkFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MockFailure value) mockFailure,
    required TResult Function(_NetworkError value) networkFailure,
    required TResult Function(_ServerError value) serverFailure,
    required TResult Function(_UnknownError value) unknownFailure,
  }) {
    return networkFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MockFailure value)? mockFailure,
    TResult? Function(_NetworkError value)? networkFailure,
    TResult? Function(_ServerError value)? serverFailure,
    TResult? Function(_UnknownError value)? unknownFailure,
  }) {
    return networkFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MockFailure value)? mockFailure,
    TResult Function(_NetworkError value)? networkFailure,
    TResult Function(_ServerError value)? serverFailure,
    TResult Function(_UnknownError value)? unknownFailure,
    required TResult orElse(),
  }) {
    if (networkFailure != null) {
      return networkFailure(this);
    }
    return orElse();
  }
}

abstract class _NetworkError extends AppError {
  factory _NetworkError() = _$NetworkErrorImpl;
  _NetworkError._() : super._();
}

/// @nodoc
abstract class _$$ServerErrorImplCopyWith<$Res> {
  factory _$$ServerErrorImplCopyWith(
          _$ServerErrorImpl value, $Res Function(_$ServerErrorImpl) then) =
      __$$ServerErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? statusCode, Map<String, dynamic>? json});
}

/// @nodoc
class __$$ServerErrorImplCopyWithImpl<$Res>
    extends _$AppErrorCopyWithImpl<$Res, _$ServerErrorImpl>
    implements _$$ServerErrorImplCopyWith<$Res> {
  __$$ServerErrorImplCopyWithImpl(
      _$ServerErrorImpl _value, $Res Function(_$ServerErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = freezed,
    Object? json = freezed,
  }) {
    return _then(_$ServerErrorImpl(
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      json: freezed == json
          ? _value._json
          : json // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc

class _$ServerErrorImpl extends _ServerError {
  _$ServerErrorImpl(
      {required this.statusCode, required final Map<String, dynamic>? json})
      : _json = json,
        super._();

  @override
  final int? statusCode;
  final Map<String, dynamic>? _json;
  @override
  Map<String, dynamic>? get json {
    final value = _json;
    if (value == null) return null;
    if (_json is EqualUnmodifiableMapView) return _json;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerErrorImpl &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            const DeepCollectionEquality().equals(other._json, _json));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, statusCode, const DeepCollectionEquality().hash(_json));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerErrorImplCopyWith<_$ServerErrorImpl> get copyWith =>
      __$$ServerErrorImplCopyWithImpl<_$ServerErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() mockFailure,
    required TResult Function() networkFailure,
    required TResult Function(int? statusCode, Map<String, dynamic>? json)
        serverFailure,
    required TResult Function(dynamic error) unknownFailure,
  }) {
    return serverFailure(statusCode, json);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? mockFailure,
    TResult? Function()? networkFailure,
    TResult? Function(int? statusCode, Map<String, dynamic>? json)?
        serverFailure,
    TResult? Function(dynamic error)? unknownFailure,
  }) {
    return serverFailure?.call(statusCode, json);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? mockFailure,
    TResult Function()? networkFailure,
    TResult Function(int? statusCode, Map<String, dynamic>? json)?
        serverFailure,
    TResult Function(dynamic error)? unknownFailure,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(statusCode, json);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MockFailure value) mockFailure,
    required TResult Function(_NetworkError value) networkFailure,
    required TResult Function(_ServerError value) serverFailure,
    required TResult Function(_UnknownError value) unknownFailure,
  }) {
    return serverFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MockFailure value)? mockFailure,
    TResult? Function(_NetworkError value)? networkFailure,
    TResult? Function(_ServerError value)? serverFailure,
    TResult? Function(_UnknownError value)? unknownFailure,
  }) {
    return serverFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MockFailure value)? mockFailure,
    TResult Function(_NetworkError value)? networkFailure,
    TResult Function(_ServerError value)? serverFailure,
    TResult Function(_UnknownError value)? unknownFailure,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(this);
    }
    return orElse();
  }
}

abstract class _ServerError extends AppError {
  factory _ServerError(
      {required final int? statusCode,
      required final Map<String, dynamic>? json}) = _$ServerErrorImpl;
  _ServerError._() : super._();

  int? get statusCode;
  Map<String, dynamic>? get json;
  @JsonKey(ignore: true)
  _$$ServerErrorImplCopyWith<_$ServerErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnknownErrorImplCopyWith<$Res> {
  factory _$$UnknownErrorImplCopyWith(
          _$UnknownErrorImpl value, $Res Function(_$UnknownErrorImpl) then) =
      __$$UnknownErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic error});
}

/// @nodoc
class __$$UnknownErrorImplCopyWithImpl<$Res>
    extends _$AppErrorCopyWithImpl<$Res, _$UnknownErrorImpl>
    implements _$$UnknownErrorImplCopyWith<$Res> {
  __$$UnknownErrorImplCopyWithImpl(
      _$UnknownErrorImpl _value, $Res Function(_$UnknownErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$UnknownErrorImpl(
      freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$UnknownErrorImpl extends _UnknownError {
  _$UnknownErrorImpl(this.error) : super._();

  @override
  final dynamic error;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnknownErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnknownErrorImplCopyWith<_$UnknownErrorImpl> get copyWith =>
      __$$UnknownErrorImplCopyWithImpl<_$UnknownErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() mockFailure,
    required TResult Function() networkFailure,
    required TResult Function(int? statusCode, Map<String, dynamic>? json)
        serverFailure,
    required TResult Function(dynamic error) unknownFailure,
  }) {
    return unknownFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? mockFailure,
    TResult? Function()? networkFailure,
    TResult? Function(int? statusCode, Map<String, dynamic>? json)?
        serverFailure,
    TResult? Function(dynamic error)? unknownFailure,
  }) {
    return unknownFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? mockFailure,
    TResult Function()? networkFailure,
    TResult Function(int? statusCode, Map<String, dynamic>? json)?
        serverFailure,
    TResult Function(dynamic error)? unknownFailure,
    required TResult orElse(),
  }) {
    if (unknownFailure != null) {
      return unknownFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MockFailure value) mockFailure,
    required TResult Function(_NetworkError value) networkFailure,
    required TResult Function(_ServerError value) serverFailure,
    required TResult Function(_UnknownError value) unknownFailure,
  }) {
    return unknownFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MockFailure value)? mockFailure,
    TResult? Function(_NetworkError value)? networkFailure,
    TResult? Function(_ServerError value)? serverFailure,
    TResult? Function(_UnknownError value)? unknownFailure,
  }) {
    return unknownFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MockFailure value)? mockFailure,
    TResult Function(_NetworkError value)? networkFailure,
    TResult Function(_ServerError value)? serverFailure,
    TResult Function(_UnknownError value)? unknownFailure,
    required TResult orElse(),
  }) {
    if (unknownFailure != null) {
      return unknownFailure(this);
    }
    return orElse();
  }
}

abstract class _UnknownError extends AppError {
  factory _UnknownError(final dynamic error) = _$UnknownErrorImpl;
  _UnknownError._() : super._();

  dynamic get error;
  @JsonKey(ignore: true)
  _$$UnknownErrorImplCopyWith<_$UnknownErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
