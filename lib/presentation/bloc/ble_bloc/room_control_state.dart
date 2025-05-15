part of 'room_control_bloc.dart';

abstract class RoomControlState extends Equatable {
  @override
  List<Object> get props => [];
}

class RoomControlInitial extends RoomControlState {}

class RoomControlLoading extends RoomControlState {}

class RoomConnected extends RoomControlState {}

class DoorOpened extends RoomControlState {}

class LightUpdated extends RoomControlState {
  final bool daylight;
  final bool nightlight;

  LightUpdated({required this.daylight, required this.nightlight});

  @override
  List<Object> get props => [daylight, nightlight];
}

class RoomControlError extends RoomControlState {
  final String message;
  RoomControlError(this.message);

  @override
  List<Object> get props => [message];
}
