// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sync_order_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SyncOrderEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SyncOrderEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SyncOrderEvent()';
  }
}

/// @nodoc
class $SyncOrderEventCopyWith<$Res> {
  $SyncOrderEventCopyWith(SyncOrderEvent _, $Res Function(SyncOrderEvent) __);
}

/// Adds pattern-matching-related methods to [SyncOrderEvent].
extension SyncOrderEventPatterns on SyncOrderEvent {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SyncAll value)? syncAll,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Started() when started != null:
        return started(_that);
      case _SyncAll() when syncAll != null:
        return syncAll(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SyncAll value) syncAll,
  }) {
    final _that = this;
    switch (_that) {
      case _Started():
        return started(_that);
      case _SyncAll():
        return syncAll(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SyncAll value)? syncAll,
  }) {
    final _that = this;
    switch (_that) {
      case _Started() when started != null:
        return started(_that);
      case _SyncAll() when syncAll != null:
        return syncAll(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? syncAll,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Started() when started != null:
        return started();
      case _SyncAll() when syncAll != null:
        return syncAll();
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() syncAll,
  }) {
    final _that = this;
    switch (_that) {
      case _Started():
        return started();
      case _SyncAll():
        return syncAll();
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? syncAll,
  }) {
    final _that = this;
    switch (_that) {
      case _Started() when started != null:
        return started();
      case _SyncAll() when syncAll != null:
        return syncAll();
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Started implements SyncOrderEvent {
  const _Started();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SyncOrderEvent.started()';
  }
}

/// @nodoc

class _SyncAll implements SyncOrderEvent {
  const _SyncAll();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _SyncAll);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SyncOrderEvent.syncAll()';
  }
}

/// @nodoc
mixin _$SyncOrderState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SyncOrderState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SyncOrderState()';
  }
}

/// @nodoc
class $SyncOrderStateCopyWith<$Res> {
  $SyncOrderStateCopyWith(SyncOrderState _, $Res Function(SyncOrderState) __);
}

/// Adds pattern-matching-related methods to [SyncOrderState].
extension SyncOrderStatePatterns on SyncOrderState {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Progress value)? progress,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial(_that);
      case _Loading() when loading != null:
        return loading(_that);
      case _Progress() when progress != null:
        return progress(_that);
      case _Success() when success != null:
        return success(_that);
      case _Error() when error != null:
        return error(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Progress value) progress,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return initial(_that);
      case _Loading():
        return loading(_that);
      case _Progress():
        return progress(_that);
      case _Success():
        return success(_that);
      case _Error():
        return error(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Progress value)? progress,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial(_that);
      case _Loading() when loading != null:
        return loading(_that);
      case _Progress() when progress != null:
        return progress(_that);
      case _Success() when success != null:
        return success(_that);
      case _Error() when error != null:
        return error(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int synced, int total)? progress,
    TResult Function()? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial();
      case _Loading() when loading != null:
        return loading();
      case _Progress() when progress != null:
        return progress(_that.synced, _that.total);
      case _Success() when success != null:
        return success();
      case _Error() when error != null:
        return error(_that.message);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int synced, int total) progress,
    required TResult Function() success,
    required TResult Function(String message) error,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return initial();
      case _Loading():
        return loading();
      case _Progress():
        return progress(_that.synced, _that.total);
      case _Success():
        return success();
      case _Error():
        return error(_that.message);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int synced, int total)? progress,
    TResult? Function()? success,
    TResult? Function(String message)? error,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial();
      case _Loading() when loading != null:
        return loading();
      case _Progress() when progress != null:
        return progress(_that.synced, _that.total);
      case _Success() when success != null:
        return success();
      case _Error() when error != null:
        return error(_that.message);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Initial implements SyncOrderState {
  const _Initial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SyncOrderState.initial()';
  }
}

/// @nodoc

class _Loading implements SyncOrderState {
  const _Loading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SyncOrderState.loading()';
  }
}

/// @nodoc

class _Progress implements SyncOrderState {
  const _Progress({required this.synced, required this.total});

  final int synced;
  final int total;

  /// Create a copy of SyncOrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ProgressCopyWith<_Progress> get copyWith =>
      __$ProgressCopyWithImpl<_Progress>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Progress &&
            (identical(other.synced, synced) || other.synced == synced) &&
            (identical(other.total, total) || other.total == total));
  }

  @override
  int get hashCode => Object.hash(runtimeType, synced, total);

  @override
  String toString() {
    return 'SyncOrderState.progress(synced: $synced, total: $total)';
  }
}

/// @nodoc
abstract mixin class _$ProgressCopyWith<$Res>
    implements $SyncOrderStateCopyWith<$Res> {
  factory _$ProgressCopyWith(_Progress value, $Res Function(_Progress) _then) =
      __$ProgressCopyWithImpl;
  @useResult
  $Res call({int synced, int total});
}

/// @nodoc
class __$ProgressCopyWithImpl<$Res> implements _$ProgressCopyWith<$Res> {
  __$ProgressCopyWithImpl(this._self, this._then);

  final _Progress _self;
  final $Res Function(_Progress) _then;

  /// Create a copy of SyncOrderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? synced = null,
    Object? total = null,
  }) {
    return _then(_Progress(
      synced: null == synced
          ? _self.synced
          : synced // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _self.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _Success implements SyncOrderState {
  const _Success();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Success);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SyncOrderState.success()';
  }
}

/// @nodoc

class _Error implements SyncOrderState {
  const _Error(this.message);

  final String message;

  /// Create a copy of SyncOrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Error &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'SyncOrderState.error(message: $message)';
  }
}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res>
    implements $SyncOrderStateCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) _then) =
      __$ErrorCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(this._self, this._then);

  final _Error _self;
  final $Res Function(_Error) _then;

  /// Create a copy of SyncOrderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(_Error(
      null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
