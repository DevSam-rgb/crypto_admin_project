import 'package:crypto_admin/screens/update_giftcard_screen.dart';
import 'package:flutter/material.dart';

class Giftcard extends StatelessWidget {
  final String image;

  const Giftcard({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Add functionality for Continue button
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => UpdateGiftCardScreen()),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Image.asset(image),
      ),
    );
  }
}
