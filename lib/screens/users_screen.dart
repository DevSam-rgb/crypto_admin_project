import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../app_icons/custom_icons.dart';
import '../widgets/search_bar.dart';
import '../widgets/user_tile.dart';

class UsersScreen extends StatefulWidget {
  const UsersScreen({super.key});

  @override
  State<UsersScreen> createState() => _UsersScreenState();
}

class _UsersScreenState extends State<UsersScreen> {
  bool _showActiveUsers =
      true; // Tracks whether to show active or inactive users

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: SvgPicture.asset(CustomIcons.back),
          onPressed: () {
            // Navigator.pop(context);
          },
        ),
        title: Text(
          'Users',
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: CustomSearchBar(), // Custom Search Bar widget
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                // Active Users Button
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _showActiveUsers = true; // Show active users
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 0, // Removes shadow
                    backgroundColor: _showActiveUsers
                        ? const Color.fromARGB(
                            255, 1, 67, 187) // Active background color
                        : Colors.white, // Inactive background color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                      side: BorderSide(
                        color: const Color(0xFFBDBDBD), // Grey border color
                        width: 1.0,
                      ),
                    ),
                  ),
                  child: Text(
                    'Active Users',
                    style: GoogleFonts.dmSans(
                      color: _showActiveUsers ? Colors.white : Colors.black,
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _showActiveUsers = false; // Show inactive users
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 0, // Removes shadow
                    backgroundColor: !_showActiveUsers
                        ? const Color.fromARGB(
                            255, 1, 67, 187) // Active background color
                        :  Colors.white, // Inactive background color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                      side: BorderSide(
                        color: const Color(0xFFBDBDBD), // Grey border color
                        width: 1.0,
                      ),
                    ),
                  ),
                  child: Text(
                    'Inactive Users',
                    style: GoogleFonts.dmSans(
                      color: !_showActiveUsers ? Colors.white : Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          // User List
          Expanded(
            child: ListView.builder(
              itemCount: 10, // Adjust the item count as needed
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 8.0),
                  child: UserTile(
                    initials: "TO",
                    name: _showActiveUsers ? "Thankgod Ogbonna" : "John Doe",
                    status: _showActiveUsers ? "Active" : "Inactive",
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
