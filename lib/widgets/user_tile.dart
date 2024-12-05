import 'package:crypto_admin/screens/user_profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserTile extends StatelessWidget {
  final String initials;
  final String name;
  final String status;

  const UserTile({
    super.key,
    required this.initials,
    required this.name,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const UserProfileScreen()),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          children: [
            Row(
              children: [
                // Circle Avatar
                CircleAvatar(
                  backgroundColor: Colors.grey[200],
                  radius: 20,
                  child: Text(
                    initials,
                    style: const TextStyle(
                      color: Color.fromARGB(255, 1, 67, 187),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                // Name and Status
                Expanded(
                  child: Text(
                    name,
                    style: GoogleFonts.dmSans(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ),
                // Status and Indicator
                Row(
                  children: [
                    Text(
                      status,
                      style: GoogleFonts.dmSans(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(width: 4),
                    Icon(
                      Icons.circle,
                      color: status == "Active"
                          ? const Color.fromARGB(255, 0, 154, 73)
                          : Colors.red, // Active is green, otherwise red
                      size: 12,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 5),
            const Divider(), // Adds a dividing line
          ],
        ),
      ),
    );
  }
}
