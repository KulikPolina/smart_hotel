import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:smart_hotel/domain/models/booked_room_model.dart';
import 'package:smart_hotel/presentation/bloc/rooms_cubit.dart';

class BookedRoomsScreen extends StatelessWidget {
  const BookedRoomsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Booked Rooms')),
      body: BlocBuilder<BookedRoomsCubit, List<BookedRoom>>(
        builder: (context, rooms) {
          if (rooms.isEmpty) {
            return const Center(child: Text('No bookings yet'));
          }

          return ListView.builder(
            itemCount: rooms.length,
            itemBuilder: (context, index) {
              final room = rooms[index];
              final dateRange =
                  '${DateFormat.yMMMd().format(room.startDate)} — ${DateFormat.yMMMd().format(room.endDate)}';

              return ListTile(
                leading: Image.asset(
                  room.imageUrl,
                  width: 60,
                  height: 60,
                  fit: BoxFit.cover,
                ),
                title: Text(room.title),
                subtitle: Text(dateRange),
              );
            },
          );
        },
      ),
    );
  }
}
