import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../app_icons/custom_icons.dart';
import '../widgets/giftcard_trade_details.dart';

class GiftcardDetailsScreen extends StatefulWidget {
  const GiftcardDetailsScreen({super.key});

  @override
  State<GiftcardDetailsScreen> createState() => _GiftcardDetailsScreenState();
}

class _GiftcardDetailsScreenState extends State<GiftcardDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: SvgPicture.asset(CustomIcons.back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Giftcard Details',
          style: GoogleFonts.dmSans(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const GiftcardDetailsCard(
              iconUrl: 'assets/pngs/appstore.png',
              giftcardName: 'Amazon GiftCard',
              amount: '₦1,000.00',
              currency: 'United State',
              cardValue: '\$100',
              cardRange: '100-500',
              accountNumber: '707790016',
              bankName: 'FCMB Back',
              accountHolder: 'Thankgod Ogbonna',
              profileUrl: 'https://example.com/profile',
              note:
              'Lorem ipsum dolor sit amet consectetur. Enim id nullam vulputate nisl ipsum. Ipsum quis mauris viverra venenatis.',
              cardImageUrl: 'assets/pngs/appstore.png',
            ),
            const SizedBox(height: 16), // Adds spacing before buttons
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle Confirm Trade action
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 1, 67, 187),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text(
                      'Confirm Trade',
                      style: GoogleFonts.dmSans(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle Decline Trade action
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text(
                      'Decline Trade',
                      style: GoogleFonts.dmSans(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
