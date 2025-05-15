import 'package:freezed_annotation/freezed_annotation.dart';

part 'connection_state.freezed.dart';

@freezed
class ConnectionState with _$ConnectionState {
  const factory ConnectionState.connected() = Connected;
  const factory ConnectionState.disconnected() = Disconnected;
  const factory ConnectionState.uninitialized() = Uninitialized;
  const factory ConnectionState.currentlyInitializing() = CurrentlyInitializing;
}