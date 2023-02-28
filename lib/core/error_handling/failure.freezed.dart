// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FailureEntity {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverFailure,
    required TResult Function() dataParsingFailure,
    required TResult Function() noConnectionFailure,
    required TResult Function() formatFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverFailure,
    TResult? Function()? dataParsingFailure,
    TResult? Function()? noConnectionFailure,
    TResult? Function()? formatFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? dataParsingFailure,
    TResult Function()? noConnectionFailure,
    TResult Function()? formatFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(DataParsingFailure value) dataParsingFailure,
    required TResult Function(NoConnectionFailure value) noConnectionFailure,
    required TResult Function(FormatFailure value) formatFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(DataParsingFailure value)? dataParsingFailure,
    TResult? Function(NoConnectionFailure value)? noConnectionFailure,
    TResult? Function(FormatFailure value)? formatFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(DataParsingFailure value)? dataParsingFailure,
    TResult Function(NoConnectionFailure value)? noConnectionFailure,
    TResult Function(FormatFailure value)? formatFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureEntityCopyWith<$Res> {
  factory $FailureEntityCopyWith(
          FailureEntity value, $Res Function(FailureEntity) then) =
      _$FailureEntityCopyWithImpl<$Res, FailureEntity>;
}

/// @nodoc
class _$FailureEntityCopyWithImpl<$Res, $Val extends FailureEntity>
    implements $FailureEntityCopyWith<$Res> {
  _$FailureEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ServerFailureCopyWith<$Res> {
  factory _$$ServerFailureCopyWith(
          _$ServerFailure value, $Res Function(_$ServerFailure) then) =
      __$$ServerFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ServerFailureCopyWithImpl<$Res>
    extends _$FailureEntityCopyWithImpl<$Res, _$ServerFailure>
    implements _$$ServerFailureCopyWith<$Res> {
  __$$ServerFailureCopyWithImpl(
      _$ServerFailure _value, $Res Function(_$ServerFailure) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ServerFailure extends ServerFailure {
  const _$ServerFailure() : super._();

  @override
  String toString() {
    return 'FailureEntity.serverFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ServerFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverFailure,
    required TResult Function() dataParsingFailure,
    required TResult Function() noConnectionFailure,
    required TResult Function() formatFailure,
  }) {
    return serverFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverFailure,
    TResult? Function()? dataParsingFailure,
    TResult? Function()? noConnectionFailure,
    TResult? Function()? formatFailure,
  }) {
    return serverFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? dataParsingFailure,
    TResult Function()? noConnectionFailure,
    TResult Function()? formatFailure,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(DataParsingFailure value) dataParsingFailure,
    required TResult Function(NoConnectionFailure value) noConnectionFailure,
    required TResult Function(FormatFailure value) formatFailure,
  }) {
    return serverFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(DataParsingFailure value)? dataParsingFailure,
    TResult? Function(NoConnectionFailure value)? noConnectionFailure,
    TResult? Function(FormatFailure value)? formatFailure,
  }) {
    return serverFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(DataParsingFailure value)? dataParsingFailure,
    TResult Function(NoConnectionFailure value)? noConnectionFailure,
    TResult Function(FormatFailure value)? formatFailure,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(this);
    }
    return orElse();
  }
}

abstract class ServerFailure extends FailureEntity {
  const factory ServerFailure() = _$ServerFailure;
  const ServerFailure._() : super._();
}

/// @nodoc
abstract class _$$DataParsingFailureCopyWith<$Res> {
  factory _$$DataParsingFailureCopyWith(_$DataParsingFailure value,
          $Res Function(_$DataParsingFailure) then) =
      __$$DataParsingFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DataParsingFailureCopyWithImpl<$Res>
    extends _$FailureEntityCopyWithImpl<$Res, _$DataParsingFailure>
    implements _$$DataParsingFailureCopyWith<$Res> {
  __$$DataParsingFailureCopyWithImpl(
      _$DataParsingFailure _value, $Res Function(_$DataParsingFailure) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DataParsingFailure extends DataParsingFailure {
  const _$DataParsingFailure() : super._();

  @override
  String toString() {
    return 'FailureEntity.dataParsingFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DataParsingFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverFailure,
    required TResult Function() dataParsingFailure,
    required TResult Function() noConnectionFailure,
    required TResult Function() formatFailure,
  }) {
    return dataParsingFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverFailure,
    TResult? Function()? dataParsingFailure,
    TResult? Function()? noConnectionFailure,
    TResult? Function()? formatFailure,
  }) {
    return dataParsingFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? dataParsingFailure,
    TResult Function()? noConnectionFailure,
    TResult Function()? formatFailure,
    required TResult orElse(),
  }) {
    if (dataParsingFailure != null) {
      return dataParsingFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(DataParsingFailure value) dataParsingFailure,
    required TResult Function(NoConnectionFailure value) noConnectionFailure,
    required TResult Function(FormatFailure value) formatFailure,
  }) {
    return dataParsingFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(DataParsingFailure value)? dataParsingFailure,
    TResult? Function(NoConnectionFailure value)? noConnectionFailure,
    TResult? Function(FormatFailure value)? formatFailure,
  }) {
    return dataParsingFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(DataParsingFailure value)? dataParsingFailure,
    TResult Function(NoConnectionFailure value)? noConnectionFailure,
    TResult Function(FormatFailure value)? formatFailure,
    required TResult orElse(),
  }) {
    if (dataParsingFailure != null) {
      return dataParsingFailure(this);
    }
    return orElse();
  }
}

abstract class DataParsingFailure extends FailureEntity {
  const factory DataParsingFailure() = _$DataParsingFailure;
  const DataParsingFailure._() : super._();
}

/// @nodoc
abstract class _$$NoConnectionFailureCopyWith<$Res> {
  factory _$$NoConnectionFailureCopyWith(_$NoConnectionFailure value,
          $Res Function(_$NoConnectionFailure) then) =
      __$$NoConnectionFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoConnectionFailureCopyWithImpl<$Res>
    extends _$FailureEntityCopyWithImpl<$Res, _$NoConnectionFailure>
    implements _$$NoConnectionFailureCopyWith<$Res> {
  __$$NoConnectionFailureCopyWithImpl(
      _$NoConnectionFailure _value, $Res Function(_$NoConnectionFailure) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NoConnectionFailure extends NoConnectionFailure {
  const _$NoConnectionFailure() : super._();

  @override
  String toString() {
    return 'FailureEntity.noConnectionFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoConnectionFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverFailure,
    required TResult Function() dataParsingFailure,
    required TResult Function() noConnectionFailure,
    required TResult Function() formatFailure,
  }) {
    return noConnectionFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverFailure,
    TResult? Function()? dataParsingFailure,
    TResult? Function()? noConnectionFailure,
    TResult? Function()? formatFailure,
  }) {
    return noConnectionFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? dataParsingFailure,
    TResult Function()? noConnectionFailure,
    TResult Function()? formatFailure,
    required TResult orElse(),
  }) {
    if (noConnectionFailure != null) {
      return noConnectionFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(DataParsingFailure value) dataParsingFailure,
    required TResult Function(NoConnectionFailure value) noConnectionFailure,
    required TResult Function(FormatFailure value) formatFailure,
  }) {
    return noConnectionFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(DataParsingFailure value)? dataParsingFailure,
    TResult? Function(NoConnectionFailure value)? noConnectionFailure,
    TResult? Function(FormatFailure value)? formatFailure,
  }) {
    return noConnectionFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(DataParsingFailure value)? dataParsingFailure,
    TResult Function(NoConnectionFailure value)? noConnectionFailure,
    TResult Function(FormatFailure value)? formatFailure,
    required TResult orElse(),
  }) {
    if (noConnectionFailure != null) {
      return noConnectionFailure(this);
    }
    return orElse();
  }
}

abstract class NoConnectionFailure extends FailureEntity {
  const factory NoConnectionFailure() = _$NoConnectionFailure;
  const NoConnectionFailure._() : super._();
}

/// @nodoc
abstract class _$$FormatFailureCopyWith<$Res> {
  factory _$$FormatFailureCopyWith(
          _$FormatFailure value, $Res Function(_$FormatFailure) then) =
      __$$FormatFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FormatFailureCopyWithImpl<$Res>
    extends _$FailureEntityCopyWithImpl<$Res, _$FormatFailure>
    implements _$$FormatFailureCopyWith<$Res> {
  __$$FormatFailureCopyWithImpl(
      _$FormatFailure _value, $Res Function(_$FormatFailure) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FormatFailure extends FormatFailure {
  const _$FormatFailure() : super._();

  @override
  String toString() {
    return 'FailureEntity.formatFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FormatFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverFailure,
    required TResult Function() dataParsingFailure,
    required TResult Function() noConnectionFailure,
    required TResult Function() formatFailure,
  }) {
    return formatFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverFailure,
    TResult? Function()? dataParsingFailure,
    TResult? Function()? noConnectionFailure,
    TResult? Function()? formatFailure,
  }) {
    return formatFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? dataParsingFailure,
    TResult Function()? noConnectionFailure,
    TResult Function()? formatFailure,
    required TResult orElse(),
  }) {
    if (formatFailure != null) {
      return formatFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(DataParsingFailure value) dataParsingFailure,
    required TResult Function(NoConnectionFailure value) noConnectionFailure,
    required TResult Function(FormatFailure value) formatFailure,
  }) {
    return formatFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(DataParsingFailure value)? dataParsingFailure,
    TResult? Function(NoConnectionFailure value)? noConnectionFailure,
    TResult? Function(FormatFailure value)? formatFailure,
  }) {
    return formatFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(DataParsingFailure value)? dataParsingFailure,
    TResult Function(NoConnectionFailure value)? noConnectionFailure,
    TResult Function(FormatFailure value)? formatFailure,
    required TResult orElse(),
  }) {
    if (formatFailure != null) {
      return formatFailure(this);
    }
    return orElse();
  }
}

abstract class FormatFailure extends FailureEntity {
  const factory FormatFailure() = _$FormatFailure;
  const FormatFailure._() : super._();
}
