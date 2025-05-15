// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'connection_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ConnectionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connected,
    required TResult Function() disconnected,
    required TResult Function() uninitialized,
    required TResult Function() currentlyInitializing,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connected,
    TResult? Function()? disconnected,
    TResult? Function()? uninitialized,
    TResult? Function()? currentlyInitializing,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connected,
    TResult Function()? disconnected,
    TResult Function()? uninitialized,
    TResult Function()? currentlyInitializing,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Connected value) connected,
    required TResult Function(Disconnected value) disconnected,
    required TResult Function(Uninitialized value) uninitialized,
    required TResult Function(CurrentlyInitializing value)
    currentlyInitializing,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Connected value)? connected,
    TResult? Function(Disconnected value)? disconnected,
    TResult? Function(Uninitialized value)? uninitialized,
    TResult? Function(CurrentlyInitializing value)? currentlyInitializing,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Connected value)? connected,
    TResult Function(Disconnected value)? disconnected,
    TResult Function(Uninitialized value)? uninitialized,
    TResult Function(CurrentlyInitializing value)? currentlyInitializing,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectionStateCopyWith<$Res> {
  factory $ConnectionStateCopyWith(
    ConnectionState value,
    $Res Function(ConnectionState) then,
  ) = _$ConnectionStateCopyWithImpl<$Res, ConnectionState>;
}

/// @nodoc
class _$ConnectionStateCopyWithImpl<$Res, $Val extends ConnectionState>
    implements $ConnectionStateCopyWith<$Res> {
  _$ConnectionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConnectionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ConnectedImplCopyWith<$Res> {
  factory _$$ConnectedImplCopyWith(
    _$ConnectedImpl value,
    $Res Function(_$ConnectedImpl) then,
  ) = __$$ConnectedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ConnectedImplCopyWithImpl<$Res>
    extends _$ConnectionStateCopyWithImpl<$Res, _$ConnectedImpl>
    implements _$$ConnectedImplCopyWith<$Res> {
  __$$ConnectedImplCopyWithImpl(
    _$ConnectedImpl _value,
    $Res Function(_$ConnectedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ConnectionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ConnectedImpl implements Connected {
  const _$ConnectedImpl();

  @override
  String toString() {
    return 'ConnectionState.connected()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ConnectedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connected,
    required TResult Function() disconnected,
    required TResult Function() uninitialized,
    required TResult Function() currentlyInitializing,
  }) {
    return connected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connected,
    TResult? Function()? disconnected,
    TResult? Function()? uninitialized,
    TResult? Function()? currentlyInitializing,
  }) {
    return connected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connected,
    TResult Function()? disconnected,
    TResult Function()? uninitialized,
    TResult Function()? currentlyInitializing,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Connected value) connected,
    required TResult Function(Disconnected value) disconnected,
    required TResult Function(Uninitialized value) uninitialized,
    required TResult Function(CurrentlyInitializing value)
    currentlyInitializing,
  }) {
    return connected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Connected value)? connected,
    TResult? Function(Disconnected value)? disconnected,
    TResult? Function(Uninitialized value)? uninitialized,
    TResult? Function(CurrentlyInitializing value)? currentlyInitializing,
  }) {
    return connected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Connected value)? connected,
    TResult Function(Disconnected value)? disconnected,
    TResult Function(Uninitialized value)? uninitialized,
    TResult Function(CurrentlyInitializing value)? currentlyInitializing,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected(this);
    }
    return orElse();
  }
}

abstract class Connected implements ConnectionState {
  const factory Connected() = _$ConnectedImpl;
}

/// @nodoc
abstract class _$$DisconnectedImplCopyWith<$Res> {
  factory _$$DisconnectedImplCopyWith(
    _$DisconnectedImpl value,
    $Res Function(_$DisconnectedImpl) then,
  ) = __$$DisconnectedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DisconnectedImplCopyWithImpl<$Res>
    extends _$ConnectionStateCopyWithImpl<$Res, _$DisconnectedImpl>
    implements _$$DisconnectedImplCopyWith<$Res> {
  __$$DisconnectedImplCopyWithImpl(
    _$DisconnectedImpl _value,
    $Res Function(_$DisconnectedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ConnectionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DisconnectedImpl implements Disconnected {
  const _$DisconnectedImpl();

  @override
  String toString() {
    return 'ConnectionState.disconnected()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DisconnectedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connected,
    required TResult Function() disconnected,
    required TResult Function() uninitialized,
    required TResult Function() currentlyInitializing,
  }) {
    return disconnected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connected,
    TResult? Function()? disconnected,
    TResult? Function()? uninitialized,
    TResult? Function()? currentlyInitializing,
  }) {
    return disconnected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connected,
    TResult Function()? disconnected,
    TResult Function()? uninitialized,
    TResult Function()? currentlyInitializing,
    required TResult orElse(),
  }) {
    if (disconnected != null) {
      return disconnected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Connected value) connected,
    required TResult Function(Disconnected value) disconnected,
    required TResult Function(Uninitialized value) uninitialized,
    required TResult Function(CurrentlyInitializing value)
    currentlyInitializing,
  }) {
    return disconnected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Connected value)? connected,
    TResult? Function(Disconnected value)? disconnected,
    TResult? Function(Uninitialized value)? uninitialized,
    TResult? Function(CurrentlyInitializing value)? currentlyInitializing,
  }) {
    return disconnected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Connected value)? connected,
    TResult Function(Disconnected value)? disconnected,
    TResult Function(Uninitialized value)? uninitialized,
    TResult Function(CurrentlyInitializing value)? currentlyInitializing,
    required TResult orElse(),
  }) {
    if (disconnected != null) {
      return disconnected(this);
    }
    return orElse();
  }
}

abstract class Disconnected implements ConnectionState {
  const factory Disconnected() = _$DisconnectedImpl;
}

/// @nodoc
abstract class _$$UninitializedImplCopyWith<$Res> {
  factory _$$UninitializedImplCopyWith(
    _$UninitializedImpl value,
    $Res Function(_$UninitializedImpl) then,
  ) = __$$UninitializedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UninitializedImplCopyWithImpl<$Res>
    extends _$ConnectionStateCopyWithImpl<$Res, _$UninitializedImpl>
    implements _$$UninitializedImplCopyWith<$Res> {
  __$$UninitializedImplCopyWithImpl(
    _$UninitializedImpl _value,
    $Res Function(_$UninitializedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ConnectionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UninitializedImpl implements Uninitialized {
  const _$UninitializedImpl();

  @override
  String toString() {
    return 'ConnectionState.uninitialized()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UninitializedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connected,
    required TResult Function() disconnected,
    required TResult Function() uninitialized,
    required TResult Function() currentlyInitializing,
  }) {
    return uninitialized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connected,
    TResult? Function()? disconnected,
    TResult? Function()? uninitialized,
    TResult? Function()? currentlyInitializing,
  }) {
    return uninitialized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connected,
    TResult Function()? disconnected,
    TResult Function()? uninitialized,
    TResult Function()? currentlyInitializing,
    required TResult orElse(),
  }) {
    if (uninitialized != null) {
      return uninitialized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Connected value) connected,
    required TResult Function(Disconnected value) disconnected,
    required TResult Function(Uninitialized value) uninitialized,
    required TResult Function(CurrentlyInitializing value)
    currentlyInitializing,
  }) {
    return uninitialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Connected value)? connected,
    TResult? Function(Disconnected value)? disconnected,
    TResult? Function(Uninitialized value)? uninitialized,
    TResult? Function(CurrentlyInitializing value)? currentlyInitializing,
  }) {
    return uninitialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Connected value)? connected,
    TResult Function(Disconnected value)? disconnected,
    TResult Function(Uninitialized value)? uninitialized,
    TResult Function(CurrentlyInitializing value)? currentlyInitializing,
    required TResult orElse(),
  }) {
    if (uninitialized != null) {
      return uninitialized(this);
    }
    return orElse();
  }
}

abstract class Uninitialized implements ConnectionState {
  const factory Uninitialized() = _$UninitializedImpl;
}

/// @nodoc
abstract class _$$CurrentlyInitializingImplCopyWith<$Res> {
  factory _$$CurrentlyInitializingImplCopyWith(
    _$CurrentlyInitializingImpl value,
    $Res Function(_$CurrentlyInitializingImpl) then,
  ) = __$$CurrentlyInitializingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CurrentlyInitializingImplCopyWithImpl<$Res>
    extends _$ConnectionStateCopyWithImpl<$Res, _$CurrentlyInitializingImpl>
    implements _$$CurrentlyInitializingImplCopyWith<$Res> {
  __$$CurrentlyInitializingImplCopyWithImpl(
    _$CurrentlyInitializingImpl _value,
    $Res Function(_$CurrentlyInitializingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ConnectionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CurrentlyInitializingImpl implements CurrentlyInitializing {
  const _$CurrentlyInitializingImpl();

  @override
  String toString() {
    return 'ConnectionState.currentlyInitializing()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentlyInitializingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connected,
    required TResult Function() disconnected,
    required TResult Function() uninitialized,
    required TResult Function() currentlyInitializing,
  }) {
    return currentlyInitializing();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connected,
    TResult? Function()? disconnected,
    TResult? Function()? uninitialized,
    TResult? Function()? currentlyInitializing,
  }) {
    return currentlyInitializing?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connected,
    TResult Function()? disconnected,
    TResult Function()? uninitialized,
    TResult Function()? currentlyInitializing,
    required TResult orElse(),
  }) {
    if (currentlyInitializing != null) {
      return currentlyInitializing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Connected value) connected,
    required TResult Function(Disconnected value) disconnected,
    required TResult Function(Uninitialized value) uninitialized,
    required TResult Function(CurrentlyInitializing value)
    currentlyInitializing,
  }) {
    return currentlyInitializing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Connected value)? connected,
    TResult? Function(Disconnected value)? disconnected,
    TResult? Function(Uninitialized value)? uninitialized,
    TResult? Function(CurrentlyInitializing value)? currentlyInitializing,
  }) {
    return currentlyInitializing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Connected value)? connected,
    TResult Function(Disconnected value)? disconnected,
    TResult Function(Uninitialized value)? uninitialized,
    TResult Function(CurrentlyInitializing value)? currentlyInitializing,
    required TResult orElse(),
  }) {
    if (currentlyInitializing != null) {
      return currentlyInitializing(this);
    }
    return orElse();
  }
}

abstract class CurrentlyInitializing implements ConnectionState {
  const factory CurrentlyInitializing() = _$CurrentlyInitializingImpl;
}
