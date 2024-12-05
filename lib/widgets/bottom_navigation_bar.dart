import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../app_icons/custom_icons.dart'; // Import the icons

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomBottomNavigationBar({
    Key? key,
    required this.currentIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        _buildBottomNavigationBarItem(
          icon: CustomIcons.overview,
          label: 'Overview',
          isSelected: currentIndex == 0,
        ),
        _buildBottomNavigationBarItem(
          icon: CustomIcons.chat,
          label: 'Chat',
          isSelected: currentIndex == 1,
        ),
        _buildBottomNavigationBarItem(
          icon: CustomIcons.rate,
          label: 'Rate',
          isSelected: currentIndex == 2,
        ),
        _buildBottomNavigationBarItem(
          icon: CustomIcons.wallet,
          label: 'Wallet',
          isSelected: currentIndex == 3,
        ),
        _buildBottomNavigationBarItem(
          icon: CustomIcons.users,
          label: 'Users',
          isSelected: currentIndex == 4,
        ),
      ],
      currentIndex: currentIndex,
      onTap: onTap,
      type: BottomNavigationBarType.fixed, // Use fixed type for always showing labels
    );
  }

  BottomNavigationBarItem _buildBottomNavigationBarItem({
    required String icon,
    required String label,
    required bool isSelected,
  }) {
    return BottomNavigationBarItem(
      icon: SvgPicture.asset(
        icon,
        color: isSelected ? Color.fromARGB(255, 1, 67, 187) : Colors.grey, // Change icon color based on selection
      ),
      label: label,
      // Use a Text widget for the label to apply color
      tooltip: '', // Optional: Add tooltip for accessibility
    );
  }

  // Use a custom Text widget with color for the label
  Widget _buildLabel(String label, bool isSelected) {
    return Text(
      label,
      style: TextStyle(
        color: isSelected ? Color.fromARGB(255, 1, 67, 187) : Colors.grey, // Change label color based on selection
      ),
    );
  }
}
