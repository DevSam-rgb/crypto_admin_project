import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CryptoTile extends StatelessWidget {
  final String status;
  final String timeAgo;
  final String amount;

  const CryptoTile({
    Key? key,
    required this.status,
    required this.timeAgo,
    required this.amount, // Path to the gift card logo (e.g., Amazon)
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              // Gift Card Logo
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.black,
                child: Image.asset(
                  "assets/pngs/btc.png",
                  height: 20,
                  width: 20,
                ),
              ),
              const SizedBox(width: 12),
              // Gift Card Details
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    status,
                    style: GoogleFonts.dmSans(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    timeAgo,
                    style: GoogleFonts.dmSans(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ],
          ),
          // Amount
          Text(
            amount,
            style: GoogleFonts.dmSans(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Color.fromARGB(255, 0, 154, 73),
            ),
          ),
        ],
      ),
    );
  }
}
