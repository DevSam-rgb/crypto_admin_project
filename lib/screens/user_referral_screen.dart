import 'package:crypto_admin/screens/modify_user_referral_link.dart';
import 'package:crypto_admin/screens/user_giftcard_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../app_icons/custom_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../widgets/referral_list_item.dart';
import '../widgets/referral_summary_card.dart';
import 'user_trade_screen.dart';
import 'user_withdraw_screen.dart';
import '../widgets/action_button.dart';



class UserReferralScreen extends StatefulWidget {
  const UserReferralScreen({super.key});

  @override
  State<UserReferralScreen> createState() => _UserReferralScreenState();
}

class _UserReferralScreenState extends State<UserReferralScreen> {
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
          'Referrals',
          style: GoogleFonts.dmSans(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          TextButton(onPressed:() {
            // Add functionality for Continue button
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ModifyUserReferralLinkScreen()),
            );
          }, child: Text('Modify Link', style: GoogleFonts.dmSans(
              color: Colors.blueAccent
          ),))
        ],
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
                            backgroundColor: const Color.fromARGB(255, 1, 67, 187),
                            borderColor: Colors.grey,
                            textColor: Colors.white,
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Summary Cards
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [
                      Expanded(
                        child: ReferralSummaryCard(
                          title: "Friends who signed Up",
                          count: "20",
                        ),
                      ),
                      Spacer(),
                      Expanded(
                        child: ReferralSummaryCard(
                          title: "Friends who Traded",
                          count: "10",
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  // Referral List Header
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Referrals List",
                        style: GoogleFonts.dmSans(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          // Add action for "View All"
                        },
                        child: Text("View all",
                          style: GoogleFonts.dmSans(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  // Referral List Items
                  const ReferralListItem(
                    name: "Thankgod Ogbonna",
                    email: "Thankmedia@gmail.com",
                    tradeStatus: "No Trade",
                  ),
                  const ReferralListItem(
                    name: "Thankgod Ogbonna",
                    email: "Thankmedia@gmail.com",
                    tradeStatus: "Traded",
                  ),
                  const ReferralListItem(
                    name: "Thankgod Ogbonna",
                    email: "Thankmedia@gmail.com",
                    tradeStatus: "No Trade",
                  ),
                  const ReferralListItem(
                    name: "Thankgod Ogbonna",
                    email: "Thankmedia@gmail.com",
                    tradeStatus: "No Trade",
                  ),
                  const ReferralListItem(
                    name: "Thankgod Ogbonna",
                    email: "Thankmedia@gmail.com",
                    tradeStatus: "Traded",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
