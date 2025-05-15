import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:smart_hotel/core/ble/ble_service.dart';

part 'room_control_event.dart';
part 'room_control_state.dart';

class RoomControlBloc extends Bloc<RoomControlEvent, RoomControlState> {
  final BleService bleService;

  RoomControlBloc(this.bleService) : super(RoomControlInitial()) {
    on<ConnectToRoom>((event, emit) async {
      emit(RoomControlLoading());
      final connected = await bleService.connect(event.deviceId);
      if (connected) {
        emit(RoomConnected());
      } else {
        emit(RoomControlError("Failed to connect"));
      }
    });

    on<OpenDoorEvent>((event, emit) async {
      try {
        await bleService.openDoor(open: event.open);
        if (event.open) {
          emit(DoorOpened());
        } else {
          emit(RoomConnected());
        }
      } catch (_) {
        emit(RoomControlError("Failed to open door"));
      }
    });

    on<SetLightEvent>((event, emit) async {
      try {
        await bleService.setLight(
          daylight: event.daylight,
          nightlight: event.nightlight,
        );
        emit(LightUpdated(daylight: event.daylight, nightlight: event.nightlight));
      } catch (_) {
        emit(RoomControlError("Failed to update light"));
      }
    });
  }
}
