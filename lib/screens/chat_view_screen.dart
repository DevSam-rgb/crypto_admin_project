import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatViewScreen extends StatefulWidget {
  const ChatViewScreen({Key? key}) : super(key: key);

  @override
  State<ChatViewScreen> createState() => _ChatViewScreenState();
}

class _ChatViewScreenState extends State<ChatViewScreen> {
  bool showBanner = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          'MilesPay Chat',
          style: GoogleFonts.dmSans(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          if (showBanner)
            Container(
              padding: const EdgeInsets.all(16.0),
              color: Color.fromARGB(255, 5, 21, 55),
              child: Row(
                children: [
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      'Hi Miles\nAsk us anything, or share your feedback',
                      style: GoogleFonts.dmSans(fontSize: 14, color: Colors.white),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.close, color: Colors.white),
                    onPressed: () {
                      setState(() {
                        showBanner = false;
                      });
                    },
                  ),
                ],
              ),
            ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16.0),
              children: [
                ChatBubble(
                  isSender: false,
                  message: 'Hey Miles! What\'s going on?',
                  time: 'Oct 27, 2024',
                ),
                ChatBubble(
                  isSender: true,
                  message:
                  'Hey boss! Absolutely, I’m always here for you. To buy crypto, just swipe to see the minimum amount you can purchase on the app.',
                  time: '',
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              border: Border(
                top: BorderSide(color: Colors.grey.shade300),
              ),
            ),
            child: Row(
              children: [
                Icon(Icons.image, color: Colors.grey.shade600),
                const SizedBox(width: 8),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white, // Light grey background
                      hintText: 'Send a message',
                      contentPadding:
                      EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        borderSide: BorderSide(
                          color: Colors.grey, // Grey border color
                          width: 1.0, // Thickness of the border
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        borderSide: BorderSide(
                          color: Colors.grey, // Grey border color
                          width: 1.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        borderSide: BorderSide(
                          color: Colors.grey, // Grey border color
                          width: 1.0,
                        ),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        borderSide: BorderSide(
                          color: Colors.grey, // Grey border color
                          width: 1.0,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 8,),
                Icon(Icons.send, color: Color.fromARGB(255, 1, 67, 187)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ChatBubble extends StatelessWidget {
  final bool isSender;
  final String message;
  final String time;

  const ChatBubble({
    Key? key,
    required this.isSender,
    required this.message,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isSender ? Alignment.centerRight : Alignment.centerLeft,
      child: Column(
        crossAxisAlignment:
        isSender ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 4.0),
            padding: const EdgeInsets.all(12.0),
            decoration: BoxDecoration(
              color: isSender ? Color.fromARGB(255, 1, 67, 187) : Colors.grey.shade200,
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: Text(
              message,
              style: GoogleFonts.dmSans(
                color: isSender ? Colors.white : Colors.black,
                fontSize: 14,
              ),
            ),
          ),
          if (time.isNotEmpty)
            Text(
              time,
              style: GoogleFonts.dmSans(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
        ],
      ),
    );
  }
}
