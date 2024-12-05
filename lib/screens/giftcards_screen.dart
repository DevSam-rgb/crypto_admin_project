import 'package:crypto_admin/screens/add_giftcard_screen.dart';
import 'package:crypto_admin/widgets/custom_app_bar.dart';
import 'package:crypto_admin/widgets/giftcard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../app_icons/custom_icons.dart';

class GiftcardsScreen extends StatefulWidget {
  const GiftcardsScreen({super.key});

  @override
  State<GiftcardsScreen> createState() => _GiftcardState();
}

class _GiftcardState extends State<GiftcardsScreen> {


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
          'GiftCards',
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
      MaterialPageRoute(builder: (context) => AddGiftCardScreen()),
    );
  }, child: Text('+ Add Card', style: GoogleFonts.dmSans(
            color: Colors.blueAccent
          ),))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: 0.8,
                ),
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Giftcard(image: 'assets/pngs/appstore.png');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
