part of 'account_bloc.dart';

@freezed
class AccountState with _$AccountState {
  const factory AccountState.initial() = _Initial;
  const factory AccountState.loading() = _Loading;
  const factory AccountState.loaded(UserModel user) = _Loaded;
  const factory AccountState.error(String message) = _Error;
}
