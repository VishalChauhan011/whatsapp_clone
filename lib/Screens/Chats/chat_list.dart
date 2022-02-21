import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Screens/Chats/chat_list_tile.dart';
import 'chat_room.dart';

class ChatList extends StatelessWidget {

  _onTileTap(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (BuildContext context) {
        return const ChatRoom();
      }),
    );
  }

  const ChatList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (BuildContext context, int index) {
        return ChatListTile(
            onTap: () => _onTileTap(context),
            avatarChild: const Icon(Icons.person),
            title: "Contact $index",
          chatText: "Hey! Buddy",
          timeText: "2:44 pm",
        );
      },
    );
  }
}
