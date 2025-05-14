import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:smart_hotel/domain/models/booked_room_model.dart';
import 'package:smart_hotel/presentation/bloc/rooms_cubit.dart';

class RoomBookingScreen extends StatefulWidget {
  final String title;
  final String imageUrl;

  const RoomBookingScreen({
    super.key,
    required this.title,
    required this.imageUrl,
  });

  @override
  State<RoomBookingScreen> createState() => _RoomBookingScreenState();
}

class _RoomBookingScreenState extends State<RoomBookingScreen> {
  DateTime? startDate;
  DateTime? endDate;

  Future<void> _selectDate({required bool isStart}) async {
    final now = DateTime.now();

    final picked = await showDatePicker(
      context: context,
      initialDate: isStart ? (startDate ?? now) : (endDate ?? startDate ?? now),
      firstDate: isStart ? now : (startDate ?? now),
      lastDate: DateTime(2100),
    );

    if (picked != null) {
      setState(() {
        if (isStart) {
          startDate = picked;
          if (endDate != null && picked.isAfter(endDate!)) {
            endDate = null;
          }
        } else {
          endDate = picked;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final dateFormat = DateFormat('MM/dd/yyyy');

    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                widget.imageUrl,
                height: 180,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 24),
            const Text('Start Date', style: TextStyle(fontSize: 16)),
            const SizedBox(height: 8),
            TextFormField(
              readOnly: true,
              onTap: () => _selectDate(isStart: true),
              decoration: InputDecoration(
                hintText: 'Select start date',
                suffixIcon: const Icon(Icons.calendar_today),
                border: const OutlineInputBorder(),
              ),
              controller: TextEditingController(
                text: startDate != null ? dateFormat.format(startDate!) : '',
              ),
            ),

            const SizedBox(height: 16),

            const Text('End Date', style: TextStyle(fontSize: 16)),
            const SizedBox(height: 8),
            TextFormField(
              readOnly: true,
              onTap:
                  startDate != null ? () => _selectDate(isStart: false) : null,
              decoration: InputDecoration(
                hintText: 'Select end date',
                suffixIcon: const Icon(Icons.calendar_today),
                border: const OutlineInputBorder(),
              ),
              controller: TextEditingController(
                text: endDate != null ? dateFormat.format(endDate!) : '',
              ),
            ),

            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed:
                    startDate != null && endDate != null
                        ? () {
                          final newBooking = BookedRoom(
                            title: widget.title,
                            imageUrl: widget.imageUrl,
                            startDate: startDate!,
                            endDate: endDate!,
                          );

                          context.read<BookedRoomsCubit>().addRoom(newBooking);

                          showDialog(
                            context: context,
                            builder:
                                (context) => AlertDialog(
                                  title: const Text('Success'),
                                  content: const Text(
                                    'Room has been booked successfully.',
                                  ),
                                  actions: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.of(
                                          context,
                                        ).pop();
                                        Navigator.of(
                                          context,
                                        ).pop();
                                      },
                                      child: const Text('OK'),
                                    ),
                                  ],
                                ),
                          );
                        }
                        : null,

                child: const Text('Book'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
