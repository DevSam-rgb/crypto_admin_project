import 'package:crypto_admin/widgets/wallet_crypto_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../app_icons/custom_icons.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
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
          'Crypto',
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
              WalletCryptoTile(name: "Bitcoin", shortName: "BTC", change: "+0.90", total: "\$23,343.09"),
              WalletCryptoTile(name: "Bitcoin", shortName: "BTC", change: "+0.90", total: "\$23,343.09"),
              WalletCryptoTile(name: "Bitcoin", shortName: "BTC", change: "+0.90", total: "\$23,343.09"),
              WalletCryptoTile(name: "Bitcoin", shortName: "BTC", change: "+0.90", total: "\$23,343.09"),
            ],
          ),
        ),
      ),
    );
  }
}
