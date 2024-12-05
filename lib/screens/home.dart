import 'package:flutter/material.dart';
import 'package:crypto_admin/screens/rate_screen.dart';
import 'package:crypto_admin/screens/users_screen.dart';
import 'package:crypto_admin/screens/wallet_screen.dart';

import '../widgets/bottom_navigation_bar.dart';
import 'chat_screen.dart';
import 'overview_screen.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
     OverviewScreen(),
    const ChatScreen(),
    const RateScreen(),
    const WalletScreen(),
    const UsersScreen(),
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTabTapped, // Pass the _onTabTapped function here
      ),
    );
  }
}
