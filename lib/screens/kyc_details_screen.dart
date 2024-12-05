import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../app_icons/custom_icons.dart';
import '../widgets/kyc_tile.dart';

class KYCDetailsScreen extends StatefulWidget {
  const KYCDetailsScreen({super.key});

  @override
  State<KYCDetailsScreen> createState() => _KYCDetailsScreenState();
}

class _KYCDetailsScreenState extends State<KYCDetailsScreen> {
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
          'KYC Details',
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Click the 'Verify' button to approve each KYC verification.",
              style: GoogleFonts.dmSans(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView(
                children: [
                  KYCTile(
                    title: "BVN Verification",
                    value: "08857584765483",
                    onVerifyPressed: () {
                      // Handle BVN Verification action
                    },
                  ),
                  KYCTile(
                    title: "Proof Of Identification",
                    value: "NIN, 08857584765483",
                    onVerifyPressed: () {
                      // Handle Proof of Identification action
                    },
                  ),
                  KYCTile(
                    title: "Email Verification",
                    value: "Thankimedia@Gmail.Com",
                    onVerifyPressed: () {
                      // Handle Email Verification action
                    },
                  ),
                  KYCTile(
                    title: "Phone Number Verification",
                    value: "08857584765483",
                    onVerifyPressed: () {
                      // Handle Phone Number Verification action
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
