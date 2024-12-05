import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../app_icons/custom_icons.dart';

class UpdateWalletAddressScreen extends StatefulWidget {
  const UpdateWalletAddressScreen({super.key});

  @override
  State<UpdateWalletAddressScreen> createState() => _UpdateWalletAddressScreenState();
}

class _UpdateWalletAddressScreenState extends State<UpdateWalletAddressScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: SvgPicture.asset(CustomIcons.back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Update Wallet Address',
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
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            Text('Tap the field to enter or update wallet address manually. Simply input the address to continue seamlessly.',
                style: GoogleFonts.dmSans(
                  color: Colors.grey,
                )),
            SizedBox(height: 16),

            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color(0xFFF5F5F5), // Light grey background
                hintText: '',
                contentPadding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  borderSide: BorderSide(
                    color: Colors.grey, // Grey border color
                    width: 1.0,
                  ),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  borderSide: BorderSide(
                    color: Colors.grey, // Grey border color
                    width: 1.0,
                  ),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  borderSide: BorderSide(
                    color: Colors.grey, // Grey border color
                    width: 1.0,
                  ),
                ),
                disabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  borderSide: BorderSide(
                    color: Colors.grey, // Grey border color
                    width: 1.0,
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),

            Text('Change Bitcoin Selling Rate',
                style: GoogleFonts.dmSans(
                  color: Colors.grey,
                )),
            SizedBox(height: 16),

            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color(0xFFF5F5F5), // Light grey background
                hintText: '',
                contentPadding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  borderSide: BorderSide(
                    color: Colors.grey, // Grey border color
                    width: 1.0,
                  ),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  borderSide: BorderSide(
                    color: Colors.grey, // Grey border color
                    width: 1.0,
                  ),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  borderSide: BorderSide(
                    color: Colors.grey, // Grey border color
                    width: 1.0,
                  ),
                ),
                disabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  borderSide: BorderSide(
                    color: Colors.grey, // Grey border color
                    width: 1.0,
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            // Update Button
            Center(
              child: SizedBox(
                width: double.infinity,
                height: 52,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    backgroundColor: const Color.fromARGB(255, 1, 67, 187),
                  ),
                  child: Text('Update',
                      style: GoogleFonts.dmSans(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
