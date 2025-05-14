import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_hotel/domain/models/booked_room_model.dart';


class BookedRoomsCubit extends Cubit<List<BookedRoom>> {
  BookedRoomsCubit() : super([]);

  void addRoom(BookedRoom room) {
    emit([...state, room]);
  }
}
