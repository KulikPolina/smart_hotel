import 'package:flutter/material.dart';

class RoomCard extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;
  final String mainImageUrl;

  const RoomCard({
    super.key,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.mainImageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        child: Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage(mainImageUrl),
            ),
            const SizedBox(width: 12),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
                  const SizedBox(height: 4),
                  Text(description, style: const TextStyle(color: Colors.grey)),
                ],
              ),
            ),

            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                imageUrl,
                width: 60,
                height: 60,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
