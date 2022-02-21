import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Screens/Camera/camera_screen.dart';
import 'package:whatsapp_clone/Screens/Chats/home.dart';

// List<CameraDescription> cameras;

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  //cameras=await availableCameras();

  runApp(const WhatsappClone());
}

class WhatsappClone extends StatelessWidget {
  const WhatsappClone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: HomePage(),
    );
  }
}
