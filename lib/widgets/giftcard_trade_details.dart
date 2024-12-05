import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GiftcardDetailsCard extends StatelessWidget {
  final String iconUrl;
  final String giftcardName;
  final String amount;
  final String currency;
  final String cardValue;
  final String cardRange;
  final String accountNumber;
  final String bankName;
  final String accountHolder;
  final String profileUrl;
  final String note;
  final String cardImageUrl;

  const GiftcardDetailsCard({
    Key? key,
    required this.iconUrl,
    required this.giftcardName,
    required this.amount,
    required this.currency,
    required this.cardValue,
    required this.cardRange,
    required this.accountNumber,
    required this.bankName,
    required this.accountHolder,
    required this.profileUrl,
    required this.note,
    required this.cardImageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Column(
              children: [
                Image.asset(iconUrl, width: 40, height: 40),
                const SizedBox(height: 8),
                Text(
                  giftcardName,
                  style: GoogleFonts.dmSans(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  'amount',
                  style: GoogleFonts.dmSans(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  amount,
                  style: GoogleFonts.dmSans(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          const Divider(height: 32, thickness: 1, color: Colors.grey),
          RowDetails(title: 'Currency', value: currency),
          RowDetails(title: 'Card value', value: cardValue),
          RowDetails(title: 'Card range', value: cardRange),
          RowDetails(
            title: 'Account number',
            value: accountNumber,
            isCopyable: true,
          ),
          RowDetails(title: 'Bank name', value: bankName),
          RowDetails(title: 'Account holder', value: accountHolder),
          const SizedBox(height: 8),
          GestureDetector(
            onTap: () {
              // Handle profile view action
            },
            child: Text(
              'View Profile',
              style: GoogleFonts.dmSans(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: Colors.blue,
              ),
            ),
          ),
          const SizedBox(height: 16),
          // Overlayed Image with Download Icon
          Center(
            child: Stack(
              alignment: Alignment.center,
              children: [
                // Darkened Image
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.black.withOpacity(0.3), // Dark overlay
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: ColorFiltered(
                      colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.3), // Further darkens image
                        BlendMode.darken,
                      ),
                      child: Image.asset(
                        cardImageUrl,
                        height: 160,
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    ),
                  ),
                ),
                // Download Icon
                IconButton(
                  icon: const Icon(Icons.download, size: 40, color: Colors.white),
                  onPressed: () {
                    // Handle download action
                  },
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Text(
            'Note',
            style: GoogleFonts.dmSans(
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            note,
            style: GoogleFonts.dmSans(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}

class RowDetails extends StatelessWidget {
  final String title;
  final String value;
  final bool isCopyable;

  const RowDetails({
    Key? key,
    required this.title,
    required this.value,
    this.isCopyable = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: GoogleFonts.dmSans(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Colors.grey,
            ),
          ),
          isCopyable
              ? Row(
            children: [
              Text(
                value,
                style: GoogleFonts.dmSans(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
              const SizedBox(width: 4),
              Icon(Icons.copy, size: 16, color: Colors.grey),
            ],
          )
              : Text(
            value,
            style: GoogleFonts.dmSans(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
