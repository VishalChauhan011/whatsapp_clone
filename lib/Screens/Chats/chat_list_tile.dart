import 'package:flutter/material.dart';

class ChatListTile extends StatelessWidget {
  const ChatListTile(
      {Key? key,
      required this.onTap,
      required this.avatarChild,
      required this.title,
      required this.chatText,
      required this.timeText})
      : super(key: key);

  final String title;
  final String chatText;
  final String timeText;
  final VoidCallback onTap;
  final double avatarRadius = 24;
  final Widget avatarChild;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(10),
        //width: double.infinity,
        color: Colors.white,
        child: Row(
          children: [
            CircleAvatar(
              radius: avatarRadius,
              child: avatarChild,
            ),
            const SizedBox(
              width: 15,
            ),
            Expanded(
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          title,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Text(
                        timeText,
                        style: TextStyle(
                          color: Colors.grey.shade700,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 3,),
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                      chatText,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey.shade700,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
