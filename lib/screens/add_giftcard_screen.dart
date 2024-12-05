import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../app_icons/custom_icons.dart';

class AddGiftCardScreen extends StatefulWidget {
  @override
  State<AddGiftCardScreen> createState() => _AddGiftCardScreenState();
}

class _AddGiftCardScreenState extends State<AddGiftCardScreen> {
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
          'Add GiftCard',
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
            Text('GiftCard Name',
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

            Text('GiftCard Rate',
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

            Text('Upload card image',
                style: GoogleFonts.dmSans(
                  color: Colors.grey,
                )),
            SizedBox(height: 16),
            GestureDetector(
              onTap: () {},
              child: Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.cloud_upload_outlined,
                        size: 40, color: Colors.grey),
                    SizedBox(height: 8),
                    Text(
                      'Upload image (Total image Max is 50MB)',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 32),
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
              child: Text('Add',
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
