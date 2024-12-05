import 'package:crypto_admin/widgets/giftcard_trade_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../app_icons/custom_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'user_referral_screen.dart';
import 'user_trade_screen.dart';
import 'user_withdraw_screen.dart';
import '../widgets/action_button.dart';


class UserGiftcardScreen extends StatefulWidget {
  const UserGiftcardScreen({super.key});

  @override
  State<UserGiftcardScreen> createState() => _UserGiftcardScreenState();
}

class _UserGiftcardScreenState extends State<UserGiftcardScreen> {
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
          'GiftCard Trade',
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
              Row(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          ActionButton(
                            text: "Withdraw",
                            backgroundColor: Colors.white,
                            borderColor: Colors.grey,
                            textColor: Colors.black,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                  const UserWithdrawScreen(),
                                ),
                              );
                            },
                          ),
                          const SizedBox(
                              width: 8), // Add spacing between buttons
                          ActionButton(
                            text: "GiftCard",
                            backgroundColor: Color.fromARGB(255, 1, 67, 187),
                            borderColor: Colors.grey,
                            textColor: Colors.white,
                            onPressed: () {},
                          ),
                          const SizedBox(width: 8),
                          ActionButton(
                            text: "Trade",
                            backgroundColor: Colors.white,
                            borderColor: Colors.grey,
                            textColor: Colors.black,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const UserTradeScreen(),
                                ),
                              );
                            },
                          ),
                          const SizedBox(width: 8),
                          ActionButton(
                            text: "Referrals",
                            backgroundColor: Colors.white,
                            borderColor: Colors.grey,
                            textColor: Colors.black,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                  const UserReferralScreen(),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              GiftCardTile(status: "Trade Successful", timeAgo: "2 hours ago", amount: "500,000"),
              GiftCardTile(status: "Trade Successful", timeAgo: "2 hours ago", amount: "500,000"),
              GiftCardTile(status: "Trade Successful", timeAgo: "2 hours ago", amount: "500,000"),
              GiftCardTile(status: "Trade Successful", timeAgo: "2 hours ago", amount: "500,000"),
              GiftCardTile(status: "Trade Successful", timeAgo: "2 hours ago", amount: "500,000"),
              GiftCardTile(status: "Trade Successful", timeAgo: "2 hours ago", amount: "500,000"),
              GiftCardTile(status: "Trade Successful", timeAgo: "2 hours ago", amount: "500,000"),
            ],
          ),
        ),
      ),
    );
  }
}
