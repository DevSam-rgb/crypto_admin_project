import 'package:crypto_admin/screens/notifications_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../app_icons/custom_icons.dart';
import '../widgets/app_drawer.dart';
import '../widgets/dashboard_card.dart';
import '../widgets/search_bar.dart';

class OverviewScreen extends StatefulWidget {
  @override
  _OverviewScreenState createState() => _OverviewScreenState();
}

class _OverviewScreenState extends State<OverviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          GestureDetector(
            onTap: () {
              // Add functionality for Continue button
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const NotificationsScreen()),
              );
            },
            child: SvgPicture.asset(
              CustomIcons.notification,
            ),
          ),
          const SizedBox(
            width: 16,
          )
        ],
        backgroundColor: Colors.transparent,
      ),
      drawer: const AppDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomSearchBar(),
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  Expanded(
                    child: DashboardCard(
                      title: 'Total Money',
                      value: '₦500,000',
                      change: '+800',
                      iconPath: 'assets/icons/total_money.svg',
                    ),
                  ),
                  SizedBox(width: 5), // Add space between the widgets
                  Expanded(
                    child: DashboardCard(
                      title: 'Total User',
                      value: '₦500,000',
                      change: '+400',
                      iconPath: 'assets/icons/users.svg',
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              const Row(
                children: [
                  Expanded(
                    child: DashboardCard(
                      title: 'Active Users',
                      value: '300',
                      change: '+50',
                      iconPath: 'assets/icons/active_users.svg',
                    ),
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    child: DashboardCard(
                      title: 'New SignUp',
                      value: '₦500,000',
                      change: '+40',
                      iconPath: 'assets/icons/new_sgnup.svg',
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              const Row(
                children: [
                  Expanded(
                    child: DashboardCard(
                      title: 'Pending Trade',
                      value: '100',
                      change: '+50',
                      iconPath: 'assets/icons/crpto.svg',
                    ),
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    child: DashboardCard(
                      title: 'Total Referrals',
                      value: '₦500,000',
                      change: '+80',
                      iconPath: 'assets/icons/referrals.svg',
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
