import 'package:flutter/material.dart';
import 'package:smart_hotel/domain/models/booked_room_model.dart';

class BookedRoomDetails extends StatefulWidget {
  final BookedRoom room;
  const BookedRoomDetails({super.key, required this.room});

  @override
  State<BookedRoomDetails> createState() => _BookedRoomDetailsState();
}

class _BookedRoomDetailsState extends State<BookedRoomDetails> {
  bool isDaylightOn = false;
  bool isNightlightOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Room 1"),
        leading: BackButton(),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                widget.room.imageUrl,
                width: double.infinity,
                height: 180,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 24),
            Text(
              "Lightning",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Daylight", style: TextStyle(fontSize: 16)),
                Switch(
                  value: isDaylightOn,
                  onChanged: (value) {
                    setState(() {
                      isDaylightOn = value;
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Nightlight", style: TextStyle(fontSize: 16)),
                Switch(
                  value: isNightlightOn,
                  onChanged: (value) {
                    setState(() {
                      isNightlightOn = value;
                    });
                  },
                ),
              ],
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  backgroundColor: Colors.deepPurple,
                  textStyle: TextStyle(fontSize: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text("Open"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}