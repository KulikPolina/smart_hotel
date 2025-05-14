import 'package:flutter/material.dart';
import 'package:smart_hotel/data/global_variables.dart';
import 'package:smart_hotel/presentation/screens/room_booking_screen.dart';
import 'package:smart_hotel/presentation/widgets/room_card.dart';

class RoomsScreen extends StatelessWidget {
  const RoomsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Rooms')),
      body: ListView.builder(
        itemCount: rooms.length,
        itemBuilder: (context, index) {
          final room = rooms[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder:
                      (_) => RoomBookingScreen(
                        title: room['title'] ?? '',
                        imageUrl: room['imageUrl'] ?? '',
                      ),
                ),
              );
            },
            child: RoomCard(
              title: room['title'] ?? '',
              description: room['description'] ?? '',
              mainImageUrl: room['mainImageUrl'] ?? '',
              imageUrl: room['imageUrl'] ?? '',
            ),
          );
        },
      ),
    );
  }
}
