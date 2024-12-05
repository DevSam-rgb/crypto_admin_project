import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ActionButton extends StatelessWidget {
  final String text; // Text displayed on the button
  final Color backgroundColor; // Background color of the button
  final Color borderColor; // Border color of the button
  final Color textColor; // Text color of the button
  final VoidCallback onPressed; // Action triggered on button press

  const ActionButton({
    super.key,
    required this.text,
    required this.backgroundColor,
    required this.borderColor,
    required this.textColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      height: 30,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          minimumSize: Size(0, 0),
          elevation: 0, // Removes shadow
          backgroundColor: backgroundColor, // Background color
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
            side: BorderSide(
              color: borderColor, // Border color
              width: 1.0,
            ),
          ),
        ),
        child: Text(
          text,
          style: GoogleFonts.dmSans(
            color: textColor, // Text color
          ),
        ),
      ),
    );
  }
}
