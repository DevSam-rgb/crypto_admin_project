import 'package:crypto_admin/screens/user_giftcard_screen.dart';
import 'package:crypto_admin/widgets/withdraw_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../app_icons/custom_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'user_referral_screen.dart';
import 'user_trade_screen.dart';
import '../widgets/action_button.dart';



class UserWithdrawScreen extends StatefulWidget {
  const UserWithdrawScreen({super.key});

  @override
  State<UserWithdrawScreen> createState() => _UserWithdrawScreenState();
}

class _UserWithdrawScreenState extends State<UserWithdrawScreen> {
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
          'Withdrawal',
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
                            backgroundColor: Color.fromARGB(255, 1, 67, 187),
                            borderColor: Colors.grey,
                            textColor: Colors.white,
                            onPressed: () {},
                          ),
                          const SizedBox(
                              width: 8), // Add spacing between buttons
                          ActionButton(
                            text: "GiftCard",
                            backgroundColor: Colors.white,
                            borderColor: Colors.grey,
                            textColor: Colors.black,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                  const UserGiftcardScreen(),
                                ),
                              );
                            },
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
              Column(
                children: [
                  WithdrawTile(status: 'Successful Withdrawal', bankName: 'Zenith Bank', timeAgo: '2 hours ago', amount: '500,000'),
                  WithdrawTile(status: 'Successful Withdrawal', bankName: 'Zenith Bank', timeAgo: '2 hours ago', amount: '500,000'),
                  WithdrawTile(status: 'Successful Withdrawal', bankName: 'Zenith Bank', timeAgo: '2 hours ago', amount: '500,000'),
                  WithdrawTile(status: 'Successful Withdrawal', bankName: 'Zenith Bank', timeAgo: '2 hours ago', amount: '500,000'),
                  WithdrawTile(status: 'Successful Withdrawal', bankName: 'Zenith Bank', timeAgo: '2 hours ago', amount: '500,000'),
                  WithdrawTile(status: 'Successful Withdrawal', bankName: 'Zenith Bank', timeAgo: '2 hours ago', amount: '500,000'),
                  WithdrawTile(status: 'Successful Withdrawal', bankName: 'Zenith Bank', timeAgo: '2 hours ago', amount: '500,000'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
