import 'package:flutter/material.dart';

class PopupButton extends StatefulWidget {
  const PopupButton({Key? key}) : super(key: key);

  @override
  _PopupButtonState createState() => _PopupButtonState();
}

class _PopupButtonState extends State<PopupButton> {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      itemBuilder: (BuildContext context) => [
        const PopupMenuItem(child: Text("New group")),
        const PopupMenuItem(child: Text("New broadcast")),
        const PopupMenuItem(child: Text("Linked devices")),
        const PopupMenuItem(child: Text("Starred Messages")),
        const PopupMenuItem(child: Text("Payments")),
        const PopupMenuItem(child: Text("Settings")),
      ],
    );
  }
}
