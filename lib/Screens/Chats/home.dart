import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Components/home_popup_button.dart';
import 'package:whatsapp_clone/Screens/Chats/chat_list.dart';

import 'package:whatsapp_clone/Screens/Camera/camera_main.dart';
//import 'package:whatsapp_clone/Screens/Chats/chat_list_tile.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final _tabs = <Widget>[
    const Icon(Icons.camera_alt),
    const Tab(text: 'CHATS'),
    const Tab(text: 'STATUS'),
    const Tab(text: 'CALLS')
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF075E54),
          title: const Text(
            'WhatsApp',
            style: TextStyle(
              fontSize: 25,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
            const PopupButton(),
          ],
          bottom: TabBar(
            tabs: _tabs,
            indicatorWeight: 3,
            indicatorColor: Colors.white,
            labelStyle: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body:  const TabBarView(
          children: [
            Text('camera'),
            ChatList(),
            Text('status'),
            Text('calls'),
          ],
        ),
      ),
    );
  }
}
