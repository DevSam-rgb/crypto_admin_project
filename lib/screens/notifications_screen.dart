import 'package:crypto_admin/screens/crypto_trade_details_screen.dart';
import 'package:crypto_admin/screens/giftcard_trade_details_screen.dart';
import 'package:crypto_admin/screens/kyc_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../app_icons/custom_icons.dart';
import '../widgets/notification_tile.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
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
          'Notifications',
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
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Wrapping ListView in a SizedBox with defined height
              SizedBox(
                height: MediaQuery.of(context).size.height - 200,
                child: ListView(
                  children: [
                    NotificationTile(
                      iconUrl: 'assets/pngs/amazon.png',
                      title: "Incoming Gift card Transaction",
                      description:
                      "ThankGod has initiated a gift card trade. Please review the details and process the transaction promptly.",
                      time: "Today 12:22PM",
                      onViewPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const GiftcardDetailsScreen()),
                        );
                      },
                    ),
                    NotificationTile(
                      iconUrl: 'assets/pngs/amazon.png',
                      title: "Incoming KYC Verification",
                      description:
                      "Please review the documents and complete the verification process at your earliest convenience.",
                      time: "Today 12:22PM",
                      onViewPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const KYCDetailsScreen()),
                        );
                      },
                    ),
                    NotificationTile(
                      iconUrl: 'assets/pngs/amazon.png',
                      title: "Incoming BTC Trade",
                      description:
                      "A new Bitcoin trade has been initiated. Please review the details and process the exchange promptly.",
                      time: "Today 12:22PM",
                      onViewPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const CryptoTradeDetailsScreen()),
                        );
                      },
                    ),
                    // Add more NotificationTile widgets...
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
