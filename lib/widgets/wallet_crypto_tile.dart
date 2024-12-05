import 'package:crypto_admin/screens/update_wallet_address_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../app_icons/custom_icons.dart';

class WalletCryptoTile extends StatelessWidget {
  final String name;
  final String shortName;
  final String change;
  final String total;

  const WalletCryptoTile({
    Key? key,
    required this.name,
    required this.shortName,
    required this.change,
    required this.total,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:  () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const UpdateWalletAddressScreen()),
        );
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                // Icon
                CircleAvatar(
                  backgroundColor: Color(0xFFF5F5F5),
                  radius: 20,
                  child: SvgPicture.asset(
                      CustomIcons.crypto
                  ),
                ),
                const SizedBox(width: 12),
                // Transaction Details
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: GoogleFonts.dmSans(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      shortName,
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
            // Time and Amount
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  change,
                  style: GoogleFonts.dmSans(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 0, 154, 73),
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  total,
                  style: GoogleFonts.dmSans(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
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
