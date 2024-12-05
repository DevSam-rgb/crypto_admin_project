import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/chat_tile.dart';
import '../widgets/search_bar.dart';
import 'chat_view_screen.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false, // This removes the back button
        title: Text(
          'Chat',
          style: GoogleFonts.dmSans(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
        centerTitle: false,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: CustomSearchBar(),
          ),
          Expanded(
              child: ListView(
            children: [
              ChatListItem(
                name: 'Felicia Simeon',
                message: 'Meeting you won\'t be a bad idea at all...',
                time: '6:45PM',
                isNew: true,
                image: 'assets/images/admin_avatar.png',
              ),
              ChatListItem(
                name: 'Felicia Simeon',
                message: 'Meeting you won\'t be a bad idea at all...',
                time: '6:45PM',
                isNew: true,
                image: 'assets/images/admin_avatar.png',
              ),
              ChatListItem(
                name: 'Felicia Simeon',
                message: 'Meeting you won\'t be a bad idea at all...',
                time: '6:45PM',
                isNew: true,
                image: 'assets/images/admin_avatar.png',
              ),
              ChatListItem(
                name: 'Felicia Simeon',
                message: 'Meeting you won\'t be a bad idea at all...',
                time: '6:45PM',
                isNew: false,
                image: 'assets/images/admin_avatar.png',
              ),
              ChatListItem(
                name: 'Felicia Simeon',
                message: 'Meeting you won\'t be a bad idea at all...',
                time: '6:45PM',
                isNew: false,
                image: 'assets/images/admin_avatar.png',
              ),
            ],
          )),
        ],
      ),
    );
  }
}
