import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../screens/chat_view_screen.dart';

class ChatListItem extends StatelessWidget {
  final String image;
  final String name;
  final String message;
  final String time;
  final bool isNew;

  const ChatListItem({
    Key? key,
    required this.image,
    required this.name,
    required this.message,
    required this.time,
    required this.isNew,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (_) => const ChatViewScreen()),
        );
      },
      leading: CircleAvatar(
        backgroundImage: AssetImage(image), // Replace with your image
      ),
      title: Text(
        name,
        style: GoogleFonts.dmSans(fontSize: 16, fontWeight: FontWeight.w700),
      ),
      subtitle: Text(
        message,
        style: GoogleFonts.dmSans(fontSize: 14, color: Colors.grey),
        overflow: TextOverflow.ellipsis,
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            time,
            style: GoogleFonts.dmSans(fontSize: 12, color: Colors.grey),
          ),
          if (isNew)
            const Icon(Icons.circle, color: Colors.blue, size: 8),
        ],
      ),
    );
  }
}