import 'package:crypto_admin/widgets/verification_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'user_giftcard_screen.dart';
import 'user_referral_screen.dart';
import 'user_trade_screen.dart';
import 'user_withdraw_screen.dart';
import '../widgets/action_button.dart';
import '../widgets/user_profile_card.dart';
import '../app_icons/custom_icons.dart';

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({super.key});

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
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
          'Profile',
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
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // User Info Section
              Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.grey[200],
                    child: Text(
                      "TO",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: const Color.fromARGB(255, 1, 67, 187),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Thankgod Ogbonna",
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "Thankimedia@gmail.com",
                        style: GoogleFonts.dmSans(
                          fontSize: 14,
                          color: Colors.grey.shade600,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        // Handle suspend account logic
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 1, 67, 187),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      child: Text(
                        "Suspend Account",
                        style: GoogleFonts.dmSans(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              // Action Buttons
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
              const SizedBox(height: 24),
              const Row(
                children: [
                  Expanded(
                    child: UserProfileCard(
                        iconPath: 'assets/icons/total_money.svg',
                        value: '500,000'),
                  ),
                  SizedBox(width: 5),
                  Expanded(
                      child: UserProfileCard(
                          iconPath: 'assets/icons/eth.svg', value: '3')),
                ],
              ),
              SizedBox(height: 10),
              const Row(
                children: [
                  Expanded(
                    child: UserProfileCard(
                        iconPath: 'assets/icons/btc.svg', value: '10'),
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    child: UserProfileCard(
                        iconPath: 'assets/icons/sol.svg', value: '0.00'),
                  ),
                ],
              ),
              SizedBox(height: 10),
              const Row(
                children: [
                  Expanded(
                    child: UserProfileCard(
                        iconPath: 'assets/icons/ton.svg', value: '13'),
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    child: UserProfileCard(
                        iconPath: 'assets/icons/ton.svg', value: '5'),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    SvgPicture.asset(
                      CustomIcons.generalinfo,
                    ),
                    Text(
                      "General Information",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Column(
                children: [
                  VerificationTile(
                    title: 'BVN Verification',
                    subtitle: '325749365275227',
                    buttonBackgroundColor: const Color(0xFFF5F5F5),
                    buttonTextColor: const Color.fromARGB(255, 0, 154, 73),
                    onPressed: () {},
                  ),
                  VerificationTile(
                    title: 'Proof Identification',
                    subtitle: 'NIN - 273325749365275227',
                    buttonBackgroundColor: const Color(0xFFF5F5F5),
                    buttonTextColor: const Color.fromARGB(255, 0, 154, 73),
                    onPressed: () {},
                  ),
                  VerificationTile(
                    title: 'Phone NUmber',
                    subtitle: '08143764319',
                    buttonBackgroundColor: const Color(0xFFF5F5F5),
                    buttonTextColor: const Color.fromARGB(255, 0, 154, 73),
                    onPressed: () {},
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Account Number',
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          '323573628698',
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'Ogbonnaya Joe Goodluck',
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'FCMB Bank',
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
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
