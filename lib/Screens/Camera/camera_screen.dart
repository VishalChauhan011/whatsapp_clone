// import 'package:camera/camera.dart';
// import 'package:flutter/material.dart';
// import 'dart:core';
//
// List<CameraDescription> cameras;
//
// // Future<void> main() async{
// //   WidgetsFlutterBinding.ensureInitialized();
// //   cameras = await availableCameras();
// // }
//
// class CameraScreen extends StatefulWidget {
//   const CameraScreen({Key? key}) : super(key: key);
//
//   @override
//   _CameraScreenState createState() => _CameraScreenState();
// }
//
// class _CameraScreenState extends State<CameraScreen> {
//
//   late CameraController _cameraController;
//   late Future<void> cameraValue;
//
//   @override
//   void initState() {
//     super.initState();
//     _cameraController=CameraController(cameras[0], ResolutionPreset.high,);
//     cameraValue=_cameraController.initialize();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold();
//   }
// }
