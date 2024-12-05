import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VerificationTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final Color buttonBackgroundColor;
  final Color buttonTextColor;
  final VoidCallback? onPressed;

  const VerificationTile({
    Key? key,
    required this.title,
    required this.subtitle,
    this.buttonBackgroundColor = const Color(0xFFF5F5F5),
    this.buttonTextColor = const Color.fromARGB(255, 0, 154, 73),
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: GoogleFonts.dmSans(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                subtitle,
                style: GoogleFonts.dmSans(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          const Spacer(),
          ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              backgroundColor: buttonBackgroundColor,
              elevation: 0, // Remove shadow
            ),
            child: Text(
              "Verfied",
              style: GoogleFonts.dmSans(
                color: buttonTextColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
