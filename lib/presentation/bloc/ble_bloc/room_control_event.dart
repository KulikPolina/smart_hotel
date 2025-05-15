part of 'room_control_bloc.dart';

abstract class RoomControlEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class ConnectToRoom extends RoomControlEvent {
  final String deviceId;
  ConnectToRoom(this.deviceId);

  @override
  List<Object> get props => [deviceId];
}

class OpenDoorEvent extends RoomControlEvent {
  final bool open;

  OpenDoorEvent({required this.open});

  @override
  List<Object> get props => [open];
}

class SetLightEvent extends RoomControlEvent {
  final bool daylight;
  final bool nightlight;

  SetLightEvent({required this.daylight, required this.nightlight});

  @override
  List<Object> get props => [daylight, nightlight];
}
