// void main() async {
// // Ensure that plugin services are initialized so that `availableCameras()`
// // can be called before `runApp()`
// WidgetsFlutterBinding.ensureInitialized();

// // Obtain a list of the available cameras on the device.
// final cameras = await availableCameras();

// // Get a specific camera from the list of available cameras.
// final firstCamera = cameras.first;
//   runApp(const MyApp());
//   // You must wait until the controller is initialized before displaying the
// // camera preview. Use a FutureBuilder to display a loading spinner until the
// // controller has finished initializing.
// FutureBuilder<void>(
//   future: _initializeControllerFuture,
//   builder: (context, snapshot) {
//     if (snapshot.connectionState == ConnectionState.done) {
//       // If the Future is complete, display the preview.
//       return CameraPreview(_controller);
//     } else {
//       // Otherwise, display a loading indicator.
//       return const Center(child: CircularProgressIndicator());
//     }
//   },
// );
// }




// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
  
//  // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
    
//     return MaterialApp(
//        debugShowCheckedModeBanner: false, 
//       title: 'Flutter Demo',
//       theme: ThemeData(
        
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: const Home(),
//       routes: {
//         '/welcome': (context) =>const Home(),
//         '/signinpage': (context) => const SignInPage(),
//         '/signuppage': (context) =>const SignUpPage(),
//         '/homepage': (context) =>const HomePage(),
//         '/pay': (context) =>const Pay(),
//         '/paymethode': (context) =>const Paymethode(),
//         '/checkin': (context) =>const CheckIn(),
//         '/scan': (context) =>const Scan(),
        
//       },
//     );
//   }
// }



// // A screen that allows users to take a picture using a given camera.
// class TakePictureScreen extends StatefulWidget {
//   const TakePictureScreen({
//     super.key,
//     required this.camera,
//   });

//   final CameraDescription camera;

//   @override
//   TakePictureScreenState createState() => TakePictureScreenState();
// }


// class TakePictureScreenState extends State<TakePictureScreen> {
//   late CameraController _controller;
//   late Future<void> _initializeControllerFuture;

//   @override
//   void initState() {
//     super.initState();
//     // To display the current output from the Camera,
//     // create a CameraController.
//     _controller = CameraController(
//       // Get a specific camera from the list of available cameras.
//       widget.camera,
//       // Define the resolution to use.
//       ResolutionPreset.medium,
//     );

//     // Next, initialize the controller. This returns a Future.
//     _initializeControllerFuture = _controller.initialize();
//   }

//   @override
//   void dispose() {
//     // Dispose of the controller when the widget is disposed.
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     // Fill this out in the next steps.
//     return Container();
//   }
  
// }

import 'dart:async';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:pcd_smart_check_in/screens/checkin/checkin.dart';
import 'package:pcd_smart_check_in/screens/checkin/scan.dart';
import 'package:pcd_smart_check_in/screens/home/Authentication/signinpage.dart';
import 'package:pcd_smart_check_in/screens/home/Authentication/signuppage.dart';
import 'package:pcd_smart_check_in/screens/home/homepage.dart';
import 'package:pcd_smart_check_in/screens/home/welcome.dart';
import 'package:pcd_smart_check_in/screens/pay/pay.dart';
import 'package:pcd_smart_check_in/screens/pay/paymethode.dart';

Future<void> main() async {
  // Ensure that plugin services are initialized so that `availableCameras()`
  // can be called before `runApp()`
  WidgetsFlutterBinding.ensureInitialized();

  // Obtain a list of the available cameras on the device.
  final cameras = await availableCameras();

  // Get a specific camera from the list of available cameras.
  final firstCamera = cameras.first;

  runApp(
    MaterialApp(
       debugShowCheckedModeBanner: false, 
      theme: ThemeData(colorScheme: const ColorScheme.light()),
      home: const Home(),
       routes: {
        '/welcome': (context) =>const Home(),
        '/signinpage': (context) => const SignInPage(),
        '/signuppage': (context) =>const SignUpPage(),
        '/homepage': (context) =>const HomePage(),
        '/pay': (context) =>const Pay(),
        '/paymethode': (context) =>const Paymethode(),
        '/checkin': (context) =>const CheckIn(),
        '/scan': (context) =>const Scan(),
        '/scanscreen': (context) =>TakePictureScreen( camera : firstCamera),
        
        
      },
    ),
  );
}
